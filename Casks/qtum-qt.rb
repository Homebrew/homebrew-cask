cask 'qtum-qt' do
  version '0.18.1'
  sha256 '27751c660ff45dc3ab196039bf7ea355fbd2a6fc55d83ae3d648691df050cd50'

  # github.com/qtumproject/qtum was verified as official when first introduced to the cask
  url "https://github.com/qtumproject/qtum/releases/download/mainnet-ignition-v#{version}/qtum-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/qtumproject/qtum/releases.atom'
  name 'Qtum'
  homepage 'https://qtum.org/'

  app 'Qtum-Qt.app'
end
