cask 'path-finder' do
  version '9.0.8'
  sha256 '982d42ab103cae693e5939ab4e9a0c83793a85b10a3e2dfb0f82f88f6a0f28b3'

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
