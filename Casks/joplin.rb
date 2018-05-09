cask 'joplin' do
  version '1.0.89'
  sha256 'bf61cee93a1998c2a0214dc01f9c2e9ac3aa182812aea30d32897dd5e75552c0'

  # github.com/laurent22/joplin was verified as official when first introduced to the cask
  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}.dmg"
  appcast 'https://github.com/laurent22/joplin/releases.atom',
          checkpoint: '618f926422fdc3006aa19e47e16db7693ec7643e4855f882e079a70aa9d75609'
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
