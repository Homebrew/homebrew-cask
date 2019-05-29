cask 'path-finder' do
  version '8.5.1'
  sha256 '8f01547f8decec50f2109f848788e35a933acf4a277bb4088507ba42bbf17a74'

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
