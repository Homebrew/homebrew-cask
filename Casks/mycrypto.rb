cask 'mycrypto' do
  version '1.4.2'
  sha256 'bc7aa35e3701d3a3e1ead7cf32bc20766a752d59986f8ee9ec1444281f288f26'

  # github.com/MyCryptoHQ/MyCrypto was verified as official when first introduced to the cask
  url "https://github.com/MyCryptoHQ/MyCrypto/releases/download/#{version}/mac_#{version}_MyCrypto.dmg"
  appcast 'https://github.com/MyCryptoHQ/MyCrypto/releases.atom'
  name 'MyCrypto'
  homepage 'https://mycrypto.com/'

  app 'MyCrypto.app'
end
