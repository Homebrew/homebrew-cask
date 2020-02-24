cask 'hbuilderx' do
  version '2.6.0.20200223'
  sha256 'b6da09883b339395b277dc75dc3a0f2a549ac7e2a49258ce6f85292703b7913a'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
