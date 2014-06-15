class Asteroid < Cask
  url 'http://www.asteroidapp.com/downloader.php?Ver=latest'
  appcast 'http://www.asteroidapp.com/appupdates.php'
  homepage 'http://www.asteroidapp.com/'
  version 'latest'
  sha256 :no_check
  link 'Asteroid.app'
end
