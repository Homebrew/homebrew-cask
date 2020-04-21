cask 'path-finder' do
  version '9.2'
  sha256 '52377e15877656fae5b3ba0685204be39cdf3c257324618fcd1267f7ebb9cc8b'

  url "https://get.cocoatech.com/PF#{version.major}.dmg"
  appcast 'https://get.cocoatech.com/releasecast.xml'
  name 'Path Finder'
  homepage 'https://cocoatech.com/'

  auto_updates true

  app 'Path Finder.app'

  zap trash: [
               '~/Library/Preferences/com.cocoatech.PathFinder.plist',
               '~/Library/Application Support/Path Finder',
             ]
end
