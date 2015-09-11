cask :v1 => 'spectacle' do

  if MacOS.release <= :mountain_lion
    version '0.8.6'
    sha256 '3e367d2d7e6fe7d5f41d717d49cb087ba7432624b71ddd91c0cfa9d5a5459b7c'
  else
    version '1.0.1'
    sha256 '8b41469acb8ae5bc845f1441c2cf630f72f0fc14ad324e78336b0cb4268216d7'

    appcast 'http://spectacleapp.com/updates/appcast.xml',
            :sha256 => 'd79bb2db04e7e53a7bb9184f9c048e4dde76a06e1be1232a9761f60db3836084'
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
