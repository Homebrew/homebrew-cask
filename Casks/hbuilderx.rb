cask 'hbuilderx' do
  version '2.7.14.20200618'
  sha256 '096150f5670f1941580f2f06237a533b3a7e3cce20c47867fb401c8decf69bef'

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
