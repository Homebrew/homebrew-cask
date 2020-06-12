cask 'mycrypto' do
  version '1.7.11'
  sha256 '55f97b4e9a05bcd15840c3de323a6fb6a8cebb5273cbb77c879a2ed8f80d87ea'

  # github.com/MyCryptoHQ/MyCrypto/ was verified as official when first introduced to the cask
  url "https://github.com/MyCryptoHQ/MyCrypto/releases/download/#{version}/mac_#{version}_MyCrypto.dmg"
  appcast 'https://github.com/MyCryptoHQ/MyCrypto/releases.atom'
  name 'MyCrypto'
  homepage 'https://mycrypto.com/'

  app 'MyCrypto.app'
end
