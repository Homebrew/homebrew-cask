cask 'exodus' do
  version '1.28.1'
  sha256 '390e673de33406529cd3585452ee5aaead1ef237cadfc04cc76fe24c51b124b9'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '4f99de16414f54266ad37fedd538ba8840b9cd9daabf2d16815e3184ae504329'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
