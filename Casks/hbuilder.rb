cask 'hbuilder' do
  version '7.3.0'
  sha256 '2721f2280e0e21960bf92c601cd2b435c309c7948a2f2cba5c41b769a1e4cc2f'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "http://download.dcloud.net.cn/HBuilder.#{version}.macosx_64.tar.gz"
  name 'HBuilder'
  homepage 'http://dcloud.io/'

  app 'HBuilder.app'
end
