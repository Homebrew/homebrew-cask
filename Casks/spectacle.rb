cask :v1 => 'spectacle' do

  if MacOS.release <= :mountain_lion
    version '0.8.6'
    sha256 '3e367d2d7e6fe7d5f41d717d49cb087ba7432624b71ddd91c0cfa9d5a5459b7c'
  else
    version '0.8.10'
    sha256 '26e4ccc906a82c5df9d1d462f1b691fce746aea43405b178d3d230fb23551d44'

    appcast 'http://spectacleapp.com/updates/appcast.xml',
            :sha256 => '5d75e2e07886ca135916e224b4b5c1468d9af1ea8ef355db33b28bff511fa6b2'
  end

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/spectacle/downloads/Spectacle+#{version}.zip"
  name 'Spectacle'
  homepage 'http://spectacleapp.com/'
  license :mit

  app 'Spectacle.app'

  zap :delete => [
                  '~/Library/Caches/com.divisiblebyzero.Spectacle',
                  '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.divisiblebyzero.Spectacle',
                  '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist',
                 ]
end
