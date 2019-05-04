cask 'qtum-qt' do
  version '0.17.4'
  sha256 '692ff5e3bc211cbdf3a5579199ea798837bd2cf3152e0ea65b3a5ed7ff1f6482'

  # github.com/qtumproject/qtum was verified as official when first introduced to the cask
  url "https://github.com/qtumproject/qtum/releases/download/mainnet-ignition-v#{version}/qtum-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/qtumproject/qtum/releases.atom'
  name 'Qtum'
  homepage 'https://qtum.org/'

  app 'Qtum-Qt.app'
end
