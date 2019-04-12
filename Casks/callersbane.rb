cask 'callersbane' do
  version '2.0.1'
  sha256 '4472d4fe4d2d55a855c4d2909d3a9b32d7f3ca56622a0ab98f3e0fc536701870'

  url "https://download.scrolls.com/callersbane/client/mac/CallersBane-Client-Mac-#{version}.dmg"
  name 'Mojang Scrolls'
  name 'Mojang Callers Bane'
  homepage 'https://scrolls.com/'

  app 'CallersBane.app'

  zap trash: [
               '~/Library/Application Support/Scrolls/',
               '~/Library/Application Support/Scrolls Launcher/',
             ]
end
