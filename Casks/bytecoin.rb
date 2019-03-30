cask 'bytecoin' do
  version '3.4.1'
  sha256 'f2fb056f2da6e51a8d3ab0f9b439763c4b030314080dd3f44a78a77302826fe5'

  # github.com/bcndev/bytecoin-gui was verified as official when first introduced to the cask
  url "https://github.com/bcndev/bytecoin-gui/releases/download/v#{version}/bytecoin-desktop-#{version}-macos.zip"
  appcast 'https://github.com/bcndev/bytecoin-gui/releases.atom'
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoin-gui.app'
end
