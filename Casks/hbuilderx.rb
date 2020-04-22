cask 'hbuilderx' do
  version '2.6.15.20200421'
  sha256 '383d1a02cd4b3f2f0af5c3a537801803a7e1e6f9524bb78ba4f00ee97438393f'

  # download.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
