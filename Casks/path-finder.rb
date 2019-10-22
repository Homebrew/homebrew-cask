cask 'path-finder' do
  version '8.6'
  sha256 'b64666967c550b61d804a198cd9acf379a72cc4897559aec5db541cc9412e1f3'

  url 'https://get.cocoatech.com/PF8.dmg'
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
