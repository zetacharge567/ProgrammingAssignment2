## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCatheMatrix makes a "special matrix" which is actually a 
## list contaning
## 1. a matrix
## 2. the inverse of 1. this functions as a cache.
## 3. function set() that sets 1.
## 4. function get() that returns 1.
## 5. function setinv() that calculates and saves the inverse of 1.
## 6. function getinv() that returns the inverse of 1.

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(data) {
		x <<- data
		inv <<- NULL
	}
	get <- function() x
	setinv <- function(input) inv <<- input
	getinv <- function() inv
	list(set=set, get=get, setinv=setinv,
		getinv = getinv)
}


## Write a short comment describing this function
## The function below evaluates the inverse of the given "special matrix" and returns it.

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	inverse <- x$getinv()
	if (!is.null(inverse)) {
		message("found cached data")
		return(inverse)
	}
	data <- x$get()
	inverse <- solve(data)
	x$setinf(inverse)
	inverse
}
