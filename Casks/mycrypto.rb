cask 'mycrypto' do
  version '1.6.6'
  sha256 '54ec8e7ed4849ad95768567aa89cd3935f3eb3873879fecb03424cbedb1b4905'

  # github.com/MyCryptoHQ/MyCrypto was verified as official when first introduced to the cask
  url "https://github.com/MyCryptoHQ/MyCrypto/releases/download/#{version}/mac_#{version}_MyCrypto.dmg"
  appcast 'https://github.com/MyCryptoHQ/MyCrypto/releases.atom'
  name 'MyCrypto'
  homepage 'https://mycrypto.com/'

  app 'MyCrypto.app'
end
