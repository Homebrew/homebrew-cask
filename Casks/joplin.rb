cask 'joplin' do
  version '0.10.35'
  sha256 'c07adf01e6063a9bda3ffabe208480a08f970ee166fa1b2e5b6a0d30496e30c3'

  # github.com/laurent22/joplin was verified as official when first introduced to the cask
  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}.dmg"
  appcast 'https://github.com/laurent22/joplin/releases.atom',
          checkpoint: 'b9837aecc553c0c56a950b38e2b9f3cbb481dd3e3f2c1a3c0b74e827fc21e6db'
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
