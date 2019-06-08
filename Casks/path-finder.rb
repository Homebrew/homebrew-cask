cask 'path-finder' do
  version '8.5.3'
  sha256 'e19cc088a904a7970654bd1194941957aee63a78a31eac9625f66eaf7e4ca193'

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
