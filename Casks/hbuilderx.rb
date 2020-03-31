cask 'hbuilderx' do
  version '2.6.8.20200330'
  sha256 '28f076c679bfba441d83ef38558bed545e661055b92d2d164f414f62369bd3a6'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
