cask 'path-finder' do
  version '8.3.9'
  sha256 'c001cd646ab09df0206f8324b537e8b7b8efbd02f80d61ea64ae4c2e06553f8c'

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
