cask 'joplin' do
  version '0.10.31'
  sha256 '8061efc03fe09fc0674a0e35f46ca9c6fa803afaa5c0a200193e5a30e148d3e0'

  # github.com/laurent22/joplin was verified as official when first introduced to the cask
  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}.dmg"
  appcast 'https://github.com/laurent22/joplin/releases.atom',
          checkpoint: '99bdbe53b8209ca00548b61ba0612a9a6d9c95185fa5c0b1b7c4a5f20e5723da'
  name 'Joplin'
  homepage 'http://joplin.cozic.net/'

  app 'Joplin.app'

  zap trash: [
               '~/Library/Application Support/Joplin',
               '~/Library/Preferences/net.cozic.joplin-desktop.helper.plist',
               '~/Library/Preferences/net.cozic.joplin-desktop.plist',
               '~/Library/Saved Application State/net.cozic.joplin-desktop.savedState',
             ]
end
