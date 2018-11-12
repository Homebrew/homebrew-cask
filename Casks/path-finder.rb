cask 'path-finder' do
  version '8.3.3'
  sha256 '4f87b4242785e9f8c5a21fa3573a860c91f3ceed65fbb7cc3e8a248f9d02caf0'

  url 'https://get.cocoatech.com/PF8.zip'
  appcast 'https://get.cocoatech.com/releasecast.xml'
  name 'Path Finder'
  homepage 'https://cocoatech.com/'

  app 'Path Finder.app'

  zap trash: [
               '~/Library/Preferences/com.cocoatech.PathFinder.plist',
               '~/Library/Application Support/Path Finder',
             ]
end
