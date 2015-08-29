cask :v1 => 'spectacle' do

  if MacOS.release <= :mountain_lion
    version '0.8.6'
    sha256 '3e367d2d7e6fe7d5f41d717d49cb087ba7432624b71ddd91c0cfa9d5a5459b7c'
  else
    version '1.0'
    sha256 '98c26000f5c3e4a1cd83d0c37ed6e4c5da9f8791281eb186d46a29651ff973b5'

    appcast 'http://spectacleapp.com/updates/appcast.xml',
            :sha256 => '749481dae440e181fef0f538185454f1661fb9ae017dc8e370455894880865f6'
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
