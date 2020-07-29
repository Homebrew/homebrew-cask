cask 'hbuilderx' do
  version '2.7.9.20200527'
  sha256 '6d7320dae5aae62e3872a73649527057f7b5165629e2075b76ad862d47e286b0'

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
