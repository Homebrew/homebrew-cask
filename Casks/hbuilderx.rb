cask 'hbuilderx' do
  version '2.6.11.20200409'
  sha256 '6084ac251c01f4a75ae553b95b2d1a7af2033741b70d79006a596133b04366cb'

  # download.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
