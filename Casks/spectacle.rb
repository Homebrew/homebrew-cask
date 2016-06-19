cask 'spectacle' do
  if MacOS.release <= :mountain_lion
    version '0.8.6'
    sha256 '3e367d2d7e6fe7d5f41d717d49cb087ba7432624b71ddd91c0cfa9d5a5459b7c'
  else
    version '1.0.6'
    sha256 '189626c02986911ba8969f548ed1417ec59b5e1b4135f5978bc20553cf5317eb'

    appcast 'https://www.spectacleapp.com/updates/appcast.xml',
            checkpoint: '6e6b8168ce612930a9982f1f9f33b40bca52219d5e44a531c5704005fa9c0002'
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
