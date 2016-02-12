cask 'spectacle' do
  if MacOS.release <= :mountain_lion
    version '0.8.6'
    sha256 '3e367d2d7e6fe7d5f41d717d49cb087ba7432624b71ddd91c0cfa9d5a5459b7c'
  else
    version '1.0.2'
    sha256 '7c63ebe77cb39fdde04c5bdfb822972e06b4715356127886367822ed5829c4b2'

    appcast 'https://www.spectacleapp.com/updates/appcast.xml',
            checkpoint: 'd7f2ed9a0414484b687dede58fdb8c2d774f50a01c35bad593aead7a5fc4dcc3'
  end

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/spectacle/downloads/Spectacle+#{version}.zip"
  name 'Spectacle'
  homepage 'https://spectacleapp.com/'
  license :mit

  app 'Spectacle.app'

  uninstall login_item: 'Spectacle'

  zap delete: [
                '~/Library/Caches/com.divisiblebyzero.Spectacle',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.divisiblebyzero.Spectacle',
                '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist',
              ]
end
