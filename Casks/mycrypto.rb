cask 'mycrypto' do
  version '1.5.7'
  sha256 '75d0e6e27a7b7c8671ad51f8607d7bf2d6b2f0bf16919525f50e18ef6c1d163a'

  # github.com/MyCryptoHQ/MyCrypto was verified as official when first introduced to the cask
  url "https://github.com/MyCryptoHQ/MyCrypto/releases/download/#{version}/mac_#{version}_MyCrypto.dmg"
  appcast 'https://github.com/MyCryptoHQ/MyCrypto/releases.atom'
  name 'MyCrypto'
  homepage 'https://mycrypto.com/'

  app 'MyCrypto.app'
end
