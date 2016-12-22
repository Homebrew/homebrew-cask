cask 'spectacle' do
  if MacOS.version <= :mountain_lion
    version '0.8.6'
    sha256 '3e367d2d7e6fe7d5f41d717d49cb087ba7432624b71ddd91c0cfa9d5a5459b7c'
  else
    version '1.2'
    sha256 '766d5bf3b404ec567110a25de1d221290bc829302283b28ed0fbe73b9557f30c'

    appcast 'https://www.spectacleapp.com/updates/appcast.xml',
            checkpoint: 'f6b3d6282b56296885c8e0dc3ff3218f12b6c045dfc946379a9322323dd85fac'
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
