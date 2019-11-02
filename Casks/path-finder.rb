cask 'path-finder' do
  version '9.0.1'
  sha256 'b53cb65f41423f7c79fa0e37fdd15926b15c600617c04ad4cfb1580ceca7d48b'

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
