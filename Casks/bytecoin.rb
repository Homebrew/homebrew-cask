cask 'bytecoin' do
  version '3.4.2'
  sha256 '97b1d33bf1e02f6594cbd41b07d2c42c5c326be18d880e0bff99396ef8159a4a'

  # github.com/bcndev/bytecoin-gui was verified as official when first introduced to the cask
  url "https://github.com/bcndev/bytecoin-gui/releases/download/v#{version}/bytecoin-desktop-#{version}-macos.zip"
  appcast 'https://github.com/bcndev/bytecoin-gui/releases.atom'
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoin-gui.app'
end
