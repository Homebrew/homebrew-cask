cask 'noiz2sa' do
  version '0.51.5'
  sha256 'eb4d7f0a133b5e1541edb3b13209af58093f9a6a9fcc1296fec88552a967306d'

  url "https://workram.com/downloads/Noiz2sa-for-OS-X-#{version}.dmg"
  appcast 'https://workram.com/games/noiz2sa/',
          checkpoint: '3c92353aee8455acd1d51f88410a69d9ebac3d53368501e0ed24a14cba05bbfa'
  name 'Noiz2sa'
  homepage 'https://workram.com/games/noiz2sa/'

  app 'Noiz2sa.app'
end
