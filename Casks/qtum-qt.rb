cask 'qtum-qt' do
  version '0.18.0'
  sha256 '6941076c1730b440f5ce038d77d8ce0c1bb1c6744dd64e4c0becb83a327d0579'

  # github.com/qtumproject/qtum was verified as official when first introduced to the cask
  url "https://github.com/qtumproject/qtum/releases/download/mainnet-ignition-v#{version}/qtum-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/qtumproject/qtum/releases.atom'
  name 'Qtum'
  homepage 'https://qtum.org/'

  app 'Qtum-Qt.app'
end
