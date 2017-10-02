cask 'exodus' do
  version '1.35.2'
  sha256 '5cd8299378a24a71a0357c26eda1e165fee9742442d4bce094da440159afcd62'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '1ac706f3f8407d2c9d89b6a33c32cf93da70e029bad2b9566ca43db3157230ab'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
