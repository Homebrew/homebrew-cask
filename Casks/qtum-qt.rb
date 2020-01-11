cask 'qtum-qt' do
  version '0.18.3'
  sha256 '80639e7cb0f38a6c2cea72361720629bad3fc99475075ae3771ef6c857637c7e'

  # github.com/qtumproject/qtum was verified as official when first introduced to the cask
  url "https://github.com/qtumproject/qtum/releases/download/mainnet-ignition-v#{version}/qtum-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/qtumproject/qtum/releases.atom'
  name 'Qtum'
  homepage 'https://qtum.org/'

  app 'Qtum-Qt.app'
end
