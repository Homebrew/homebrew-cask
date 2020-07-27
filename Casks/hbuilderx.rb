cask 'hbuilderx' do
  version '2.8.2.20200726'
  sha256 '78ea0843cc6fb0dd0f3eb588a8b406ecae096a2e7fc781753631a239662f7007'

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
