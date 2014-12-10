cask :v1 => 'pwnagetool' do
  version '5.1.1'
  sha256 '84262734ad9f9186bce14a4f939d7ea290ed187782fdfa549a82c28bf837c808'

  url "https://sites.google.com/a/ipad-dev.com/files/pwnagetool/PwnageTool_#{version}.dmg"
  appcast 'http://www.iphone-dev.org/appcast/PwnageTool2.xml',
          :sha256 => '83d334e863f2a0ab58615cbc03805b9ed6a83daf496c0ce315285fbe635e35ce'
  homepage 'http://blog.iphone-dev.org/tagged/PwnageTool'
  license :unknown    # todo: improve this machine-generated value

  app 'PwnageTool.app'
end
