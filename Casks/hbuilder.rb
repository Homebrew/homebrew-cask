cask 'hbuilder' do
  version '8.0.2'
  sha256 '972e5614d66624306e52726e339842155064bc744148ef7eb54c8441c4c7a828'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "http://download.dcloud.net.cn/HBuilder.#{version}.macosx_64.dmg"
  name 'HBuilder'
  homepage 'https://www.dcloud.io/'

  app 'HBuilder.app'
end
