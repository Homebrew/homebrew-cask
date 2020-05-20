cask 'hbuilderx' do
  version '2.7.5.20200519'
  sha256 'b4cf270937e14f8d4a9aca5b3326e0405eceef70f7fee6b79156e8c7757e85d1'

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
