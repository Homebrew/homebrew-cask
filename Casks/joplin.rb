cask 'joplin' do
  version '1.0.85'
  sha256 '4bd98d0effea61ab3ce52682daf542f17d45f28bc5a76fe8ca7ae01249028906'

  # github.com/laurent22/joplin was verified as official when first introduced to the cask
  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}.dmg"
  appcast 'https://github.com/laurent22/joplin/releases.atom',
          checkpoint: 'd0549d720b9f659d8b960800e994b324a0eb38c98afca63b5359c0b466df8433'
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
