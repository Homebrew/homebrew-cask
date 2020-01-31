cask 'mycrypto' do
  version '1.7.5'
  sha256 '550c193f3ba0935e691244a0791e543ce7c6910e6ad792e9e21b9fceb1fe96f7'

  # github.com/MyCryptoHQ/MyCrypto was verified as official when first introduced to the cask
  url "https://github.com/MyCryptoHQ/MyCrypto/releases/download/#{version}/mac_#{version}_MyCrypto.dmg"
  appcast 'https://github.com/MyCryptoHQ/MyCrypto/releases.atom'
  name 'MyCrypto'
  homepage 'https://mycrypto.com/'

  app 'MyCrypto.app'
end
