cask 'joplin' do
  version '0.10.37'
  sha256 '1b654cc214ea77b555ebf4f67b898558ec264fbebfaaa0912e6d0e7099ff22a6'

  # github.com/laurent22/joplin was verified as official when first introduced to the cask
  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}.dmg"
  appcast 'https://github.com/laurent22/joplin/releases.atom',
          checkpoint: 'dbc76e3bb5133f1d10c8915aeea6e2395e33d927995fdc24e45b941ae59066f3'
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
