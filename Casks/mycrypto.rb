cask 'mycrypto' do
  version '1.7.10'
  sha256 '235918375040f575eb466f6761feab9ee8501ec2887fe866938d8d02ab1c2da8'

  # github.com/MyCryptoHQ/MyCrypto/ was verified as official when first introduced to the cask
  url "https://github.com/MyCryptoHQ/MyCrypto/releases/download/#{version}/mac_#{version}_MyCrypto.dmg"
  appcast 'https://github.com/MyCryptoHQ/MyCrypto/releases.atom'
  name 'MyCrypto'
  homepage 'https://mycrypto.com/'

  app 'MyCrypto.app'
end
