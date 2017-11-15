cask 'exodus' do
  version '1.38.1'
  sha256 '2c49e0970d2d1b05a97bbce196caae1eb62a64e76c62ac6076bebf09e2e0a826'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '23329ff424c94a6b83938f27b4bbdab481be782e8650a36b97e8373259adf9c6'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
