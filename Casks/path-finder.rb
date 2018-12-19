cask 'path-finder' do
  version '8.3.6'
  sha256 '9b5322e859fc41607b2b383881c297f21bfc0b8f8b0bdf7abc63dfae2bc1bdcc'

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
