cask 'pwnagetool' do
  version '5.1.1'
  sha256 '84262734ad9f9186bce14a4f939d7ea290ed187782fdfa549a82c28bf837c808'

  # sites.google.com/a/ipad-dev.com/files/pwnagetool was verified as official when first introduced to the cask
  url "https://sites.google.com/a/ipad-dev.com/files/pwnagetool/PwnageTool_#{version}.dmg"
  name 'PwnageTool'
  homepage 'http://blog.iphone-dev.org/tagged/PwnageTool'

  app 'PwnageTool.app'
end
