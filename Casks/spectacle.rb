cask 'spectacle' do
  if MacOS.version <= :mountain_lion
    version '0.8.6'
    sha256 '3e367d2d7e6fe7d5f41d717d49cb087ba7432624b71ddd91c0cfa9d5a5459b7c'
  else
    version '1.1.1'
    sha256 '5277f226b494eea34bd94b11712aa0cf6205cd682830d95683c2362103c01a7a'

    appcast 'https://www.spectacleapp.com/updates/appcast.xml',
            checkpoint: 'fc09f1ec4c33bc291b3ef504637f3e83d8be7198fa636ac70e73a5f0a51315cd'
  end

  # amazonaws.com/spectacle was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/spectacle/downloads/Spectacle+#{version}.zip"
  name 'Spectacle'
  homepage 'https://www.spectacleapp.com/'

  accessibility_access true

  app 'Spectacle.app'

  uninstall login_item: 'Spectacle'

  zap delete: [
                '~/Library/Caches/com.divisiblebyzero.Spectacle',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.divisiblebyzero.Spectacle',
                '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist',
              ]
end
