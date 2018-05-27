cask 'hbuilder' do
  version '9.0.6'
  sha256 '7802470184fee4b7355c10bca6e39898b696926ecdfb258bc08b2fdfda80aa96'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "http://download.dcloud.net.cn/HBuilder.#{version}.macosx_64.dmg"
  name 'HBuilder'
  homepage 'https://www.dcloud.io/'

  app 'HBuilder.app'
end
