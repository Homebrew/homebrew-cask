cask 'hbuilder' do
  version '9.0.2'
  sha256 '44dd208cd27b228c7ce12afa28e749be70d0087c389431cf8638c372ecaff6d5'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "http://download.dcloud.net.cn/HBuilder.#{version}.macosx_64.dmg"
  name 'HBuilder'
  homepage 'https://www.dcloud.io/'

  app 'HBuilder.app'
end
