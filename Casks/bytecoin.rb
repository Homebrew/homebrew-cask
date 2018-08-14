cask 'bytecoin' do
  version '3.2.3'
  sha256 '561e098c20651718a923983e733817f860e31b856efb042b94adc4a3c9684c08'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/bcndev/bytecoin-gui/releases/download/v#{version}/bytecoin-desktop-#{version}-macos.zip"
  appcast 'https://github.com/bcndev/bytecoin-gui/releases.atom'
  name 'Bytecoin Wallet'
  homepage 'https://bytecoin.org/'

  app 'bytecoin-gui.app'
end
