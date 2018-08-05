cask 'bytecoin' do
  version '3.2.1'
  sha256 '6e9d2e33e96350915cd4ef5c88c399d9e4b99661312e2e8ab130e9eb696a23b5'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/bcndev/bytecoin-gui/releases/download/v#{version}/bytecoin-desktop-#{version}-macos.zip"
  appcast 'https://github.com/bcndev/bytecoin-gui/releases.atom'
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoin-gui.app'
end
