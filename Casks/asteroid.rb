cask :v1 => 'asteroid' do
  version '0.9.7'
  sha256 'a4e5de12093ccf5fee7a0515504d758cbe7c721db36695dd467d60a3ed6a2f16'

  url "http://www.asteroidapp.com/downloader.php?Ver=#{version}"
  name 'Asteroid'
  appcast 'http://www.asteroidapp.com/appupdates.php'
  homepage 'http://www.asteroidapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Asteroid.app'
end
