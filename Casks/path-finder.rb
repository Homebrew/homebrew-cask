cask 'path-finder' do
  version '8.3.3'
  sha256 'f9090f5590e349ede44ec20f3aa06b8d8b92a6e79fc66e03075a5a8dc857fccc'

  url 'https://get.cocoatech.com/PF8.dmg'
  appcast 'https://get.cocoatech.com/releasecast.xml'
  name 'Path Finder'
  homepage 'https://cocoatech.com/'

  app 'Path Finder.app'

  zap trash: [
               '~/Library/Preferences/com.cocoatech.PathFinder.plist',
               '~/Library/Application Support/Path Finder',
             ]
end
