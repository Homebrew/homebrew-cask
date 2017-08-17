cask 'exodus' do
  version '1.31.1'
  sha256 '3cb576f088d73c153105ec8a50c1cb46ae4a572cec33d2392c13c0cd0174c02f'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '6b3805591eaf4e9fbdf2b97ab5a2c89b8198584454717c71aa30811c547fbc48'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
