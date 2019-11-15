cask 'hbuilderx' do
  version '2.4.2.20191115'
  sha256 '4ffe7ea712821cab04d3cd8969622e6016b9fce21fcee05a1305e7f495b30740'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
