cask 'spectacle' do
  if MacOS.version <= :mountain_lion
    version '0.8.6'
    sha256 '3e367d2d7e6fe7d5f41d717d49cb087ba7432624b71ddd91c0cfa9d5a5459b7c'
  else
    version '1.1.2'
    sha256 '85624c4fbff0e3a7bb20a2ad724ec2a1246c7cd43217f6a0856743262163a756'

    appcast 'https://www.spectacleapp.com/updates/appcast.xml',
            checkpoint: 'e9634b0540816be0607d661c31d7ea7ae37a8d545030c4f88f70e1cd0d2852df'
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
