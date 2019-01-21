cask 'path-finder' do
  version '8.3.8'
  sha256 'c56e3a0702bc6445a1af0db53c05620a135a210ac6d08fb7c35d5c67aa4ef297'

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
