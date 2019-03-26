cask 'qtum-qt' do
  version '0.17.2'
  sha256 '90c1f2e5c2f66c2b101826c4ce4dd02ad52bf5510b61aa97e4df7bc366b6133c'

  # github.com/qtumproject/qtum was verified as official when first introduced to the cask
  url "https://github.com/qtumproject/qtum/releases/download/mainnet-ignition-v#{version}/qtum-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/qtumproject/qtum/releases.atom'
  name 'Qtum'
  homepage 'https://qtum.org/'

  app 'Qtum-Qt.app'
end
