cask 'path-finder' do
  version :latest
  sha256 :no_check

  url 'https://get.cocoatech.com/PF8.zip'
  name 'Path Finder'
  homepage 'https://cocoatech.com/'

  app 'Path Finder.app'

  zap trash: [
               '~/Library/Preferences/com.cocoatech.PathFinder.plist',
               '~/Library/Application Support/Path Finder',
             ]
end
