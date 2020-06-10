cask 'joplin' do
  version '1.0.216'
  sha256 'a47bbf791a38028e3f27396ba57059cc9ebb146db0fea86fcc1ec4f0650d52f5'

  # github.com/laurent22/joplin/ was verified as official when first introduced to the cask
  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}.dmg"
  appcast 'https://github.com/laurent22/joplin/releases.atom'
  name 'Joplin'
  homepage 'https://joplin.cozic.net/'

  app 'Joplin.app'

  zap trash: [
               '~/Library/Application Support/Joplin',
               '~/Library/Preferences/net.cozic.joplin-desktop.helper.plist',
               '~/Library/Preferences/net.cozic.joplin-desktop.plist',
               '~/Library/Saved Application State/net.cozic.joplin-desktop.savedState',
             ]
end
