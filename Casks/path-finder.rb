cask 'path-finder' do
  version '8.3.4'
  sha256 '65ecb40e0d00603f99fdb9a63f62136d95640417f3c2cf0e8c933063d0db9da6'

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
