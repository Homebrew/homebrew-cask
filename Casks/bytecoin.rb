cask 'bytecoin' do
  version '3.3.3'
  sha256 'cc7c90ef99a21fb0e2e055112dd519fb167e49bfe6748774f6cff231d1d6f513'

  # github.com/bcndev/bytecoin-gui was verified as official when first introduced to the cask
  url "https://github.com/bcndev/bytecoin-gui/releases/download/v#{version}/bytecoin-desktop-#{version}-macos.zip"
  appcast 'https://github.com/bcndev/bytecoin-gui/releases.atom'
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoin-gui.app'
end
