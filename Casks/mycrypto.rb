cask 'mycrypto' do
  version '1.7.9'
  sha256 'b3fdba4dd5a9e17ec468970e30360bd993412b750a68d9580d95d515fff3e49a'

  # github.com/MyCryptoHQ/MyCrypto/ was verified as official when first introduced to the cask
  url "https://github.com/MyCryptoHQ/MyCrypto/releases/download/#{version}/mac_#{version}_MyCrypto.dmg"
  appcast 'https://github.com/MyCryptoHQ/MyCrypto/releases.atom'
  name 'MyCrypto'
  homepage 'https://mycrypto.com/'

  app 'MyCrypto.app'
end
