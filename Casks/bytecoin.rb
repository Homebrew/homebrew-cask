cask 'bytecoin' do
  version '3.3.2'
  sha256 '661f8753120114dd25ff8a70446def8fc5234c25f063d02d103db45d87088c44'

  # github.com/bcndev/bytecoin-gui was verified as official when first introduced to the cask
  url "https://github.com/bcndev/bytecoin-gui/releases/download/v#{version}/bytecoin-desktop-#{version}-macos.zip"
  appcast 'https://github.com/bcndev/bytecoin-gui/releases.atom'
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoin-gui.app'
end
