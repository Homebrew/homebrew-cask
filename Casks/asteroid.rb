cask :v1 => 'asteroid' do
  version :latest
  sha256 :no_check

  url 'http://www.asteroidapp.com/downloader.php?Ver=latest'
  name 'Asteroid'
  appcast 'http://www.asteroidapp.com/appupdates.php'
  homepage 'http://www.asteroidapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Asteroid.app'
end
