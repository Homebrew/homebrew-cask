cask 'path-finder' do
  version '9.0.7'
  sha256 'c4ecd744dec73f50bf28e3f1d0d816a7f63e6ef4d73d952638010e838066f746'

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
