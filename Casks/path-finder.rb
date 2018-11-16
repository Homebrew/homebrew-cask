cask 'path-finder' do
  version '8.3.5'
  sha256 '40ec6267e36fa4c88f89c6ae43b634bbcabb9d9c0194341f5acd8cb87ed18a0b'

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
