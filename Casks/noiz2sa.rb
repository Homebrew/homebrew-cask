cask 'noiz2sa' do
  version '0.51.5'
  sha256 'eb4d7f0a133b5e1541edb3b13209af58093f9a6a9fcc1296fec88552a967306d'

  url "https://workram.com/downloads/Noiz2sa-for-OS-X-#{version}.dmg"
  appcast 'https://workram.com/games/noiz2sa/',
          checkpoint: 'a6b2ed06deaa79e55249a0e6f105c3562391f1bad1f17006ded7d6bef06049cd'
  name 'Noiz2sa'
  homepage 'https://workram.com/games/noiz2sa/'

  app 'Noiz2sa.app'
end
