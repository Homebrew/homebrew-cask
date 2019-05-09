cask 'qtum-qt' do
  version '0.17.5'
  sha256 '6cc84f6060c755fbd1113ff1b50d33607b28b033a7ac01a33be0a6f0726b20db'

  # github.com/qtumproject/qtum was verified as official when first introduced to the cask
  url "https://github.com/qtumproject/qtum/releases/download/mainnet-ignition-v#{version}/qtum-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/qtumproject/qtum/releases.atom'
  name 'Qtum'
  homepage 'https://qtum.org/'

  app 'Qtum-Qt.app'
end
