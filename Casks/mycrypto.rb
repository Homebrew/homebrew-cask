cask 'mycrypto' do
  version '1.7.3'
  sha256 '45cfff1e2d9f5a33bf7e7e9646d4029ce7aeb7494c5c3a2cb70489efc331ca98'

  # github.com/MyCryptoHQ/MyCrypto was verified as official when first introduced to the cask
  url "https://github.com/MyCryptoHQ/MyCrypto/releases/download/#{version}/mac_#{version}_MyCrypto.dmg"
  appcast 'https://github.com/MyCryptoHQ/MyCrypto/releases.atom'
  name 'MyCrypto'
  homepage 'https://mycrypto.com/'

  app 'MyCrypto.app'
end
