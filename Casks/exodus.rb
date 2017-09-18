cask 'exodus' do
  version '1.34.1'
  sha256 '57723e1ad927b72170bf834b5221e4cf40c4ef213041a5dcbe793ff6b7d65a43'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '121753bfa066ae1758ee2bf073df1d754ee4e09489e1ef501174c2603c61e70d'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
