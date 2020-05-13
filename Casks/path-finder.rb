cask 'path-finder' do
  version '9.3'
  sha256 'ef0fb9d17b709a725d37d8a58bcd03a1971fdecc726fbadf601544b357e9bab2'

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
