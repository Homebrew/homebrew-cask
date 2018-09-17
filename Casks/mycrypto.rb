cask 'mycrypto' do
  version '1.3.0'
  sha256 '225ee4b12e2f0de504c1079eddf19bcd54d077fdd49e08deede7719662eb0f36'

  # github.com/MyCryptoHQ/MyCrypto was verified as official when first introduced to the cask
  url "https://github.com/MyCryptoHQ/MyCrypto/releases/download/#{version}/mac_#{version}_MyCrypto.dmg"
  appcast 'https://github.com/MyCryptoHQ/MyCrypto/releases.atom'
  name 'MyCrypto'
  homepage 'https://mycrypto.com/'

  app 'MyCrypto.app'
end
