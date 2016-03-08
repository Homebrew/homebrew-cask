cask 'spectacle' do
  if MacOS.release <= :mountain_lion
    version '0.8.6'
    sha256 '3e367d2d7e6fe7d5f41d717d49cb087ba7432624b71ddd91c0cfa9d5a5459b7c'
  else
    version '1.0.3'
    sha256 '6686e2b409e1a44db0c1421c06dd8cbf4be9c95dcf7e934552faf5734ccee9b6'

    appcast 'https://www.spectacleapp.com/updates/appcast.xml',
            checkpoint: '7e818cf270c24f8b39a9593afae4fab044c6a885a1ba695d81652e56b27c3320'
  end

  # amazonaws.com/spectacle was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/spectacle/downloads/Spectacle+#{version}.zip"
  name 'Spectacle'
  homepage 'https://spectacleapp.com/'
  license :mit

  accessibility_access true

  app 'Spectacle.app'

  uninstall login_item: 'Spectacle'

  zap delete: [
                '~/Library/Caches/com.divisiblebyzero.Spectacle',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.divisiblebyzero.Spectacle',
                '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist',
              ]
end
