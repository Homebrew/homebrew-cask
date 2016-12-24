cask 'hbuilder' do
  version '7.6.0'
  sha256 '1f170037d3261b1b227c519e3f79b3de8a8b9b2066c2b269d566bacc4a4ace1c'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "http://download.dcloud.net.cn/HBuilder.#{version}.macosx_64.dmg"
  name 'HBuilder'
  homepage 'https://www.dcloud.io/'

  app 'HBuilder.app'
end
