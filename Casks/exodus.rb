cask 'exodus' do
  version '1.27.2'
  sha256 '31a3b18be13678d5f4df80420da031f51a09441c808214dd0eb1499b2b084c27'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '87b87fbc30ec3859525d6178abf7f2d04f1621b5f581c70164870d4b68625e84'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
