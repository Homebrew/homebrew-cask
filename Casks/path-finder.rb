cask 'path-finder' do
  version '8.5'
  sha256 '146ddbc2e7a034d746e2a1488b8eb507331985b6308518e387054316d9ccada2'

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
