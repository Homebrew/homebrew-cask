cask 'path-finder' do
  version '9.0.3'
  sha256 '21a47587872a38bc430d4a68bf8f64133f5d142ba8962192381008e87406257c'

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
