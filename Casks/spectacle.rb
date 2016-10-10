cask 'spectacle' do
  if MacOS.version <= :mountain_lion
    version '0.8.6'
    sha256 '3e367d2d7e6fe7d5f41d717d49cb087ba7432624b71ddd91c0cfa9d5a5459b7c'
  else
    version '1.1'
    sha256 'ead5000dd1c8fc45485498cec2ae7be1e682b2652a8791d537c8db0c6a13b7e9'

    appcast 'https://www.spectacleapp.com/updates/appcast.xml',
            checkpoint: '24ec634b9fd9d3dfbba43702fa2a10fef892f5885a305f9dfb79456c98b3e341'
  end

  # amazonaws.com/spectacle was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/spectacle/downloads/Spectacle+#{version}.zip"
  name 'Spectacle'
  homepage 'https://spectacleapp.com/'

  accessibility_access true

  app 'Spectacle.app'

  uninstall login_item: 'Spectacle'

  zap delete: [
                '~/Library/Caches/com.divisiblebyzero.Spectacle',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.divisiblebyzero.Spectacle',
                '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist',
              ]
end
