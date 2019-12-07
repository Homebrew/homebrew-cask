cask 'qtum-qt' do
  version '0.18.2'
  sha256 'de21ee839e2ea67ab85e684358deaaecfd6f3c990a9c2f3bfdcbdf92ceb478f7'

  # github.com/qtumproject/qtum was verified as official when first introduced to the cask
  url "https://github.com/qtumproject/qtum/releases/download/mainnet-ignition-v#{version}/qtum-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/qtumproject/qtum/releases.atom'
  name 'Qtum'
  homepage 'https://qtum.org/'

  app 'Qtum-Qt.app'
end
