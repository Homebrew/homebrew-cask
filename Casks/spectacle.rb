cask 'spectacle' do
  if MacOS.release <= :mountain_lion
    version '0.8.6'
    sha256 '3e367d2d7e6fe7d5f41d717d49cb087ba7432624b71ddd91c0cfa9d5a5459b7c'
  else
    version '1.0.1'
    sha256 '8b41469acb8ae5bc845f1441c2cf630f72f0fc14ad324e78336b0cb4268216d7'

    appcast 'https://www.spectacleapp.com/updates/appcast.xml',
            checkpoint: '226e49c2c3fe9bd13f9e0aebe5a687134443107cd542cea2ede86ff41d081943'
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
