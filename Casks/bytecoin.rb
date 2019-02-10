cask 'bytecoin' do
  version '3.4.0'
  sha256 '051eca8f564dbcad8ea51fdd02740b128b35df2676777d2d128711ae83b8590e'

  # github.com/bcndev/bytecoin-gui was verified as official when first introduced to the cask
  url "https://github.com/bcndev/bytecoin-gui/releases/download/v#{version}/bytecoin-desktop-#{version}-macos.zip"
  appcast 'https://github.com/bcndev/bytecoin-gui/releases.atom'
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoin-gui.app'
end
