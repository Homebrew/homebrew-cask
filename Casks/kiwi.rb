cask :v1 => 'kiwi' do
  version '3.2.0_1529'
  sha256 '0b85fc805ce91ee7fbc0f9207f9e5196d74019806d0078423cd5444334ab1619'

  # yourhead.com is the official download host per the vendor homepage
  url "http://yourhead.com/appcast/kiwi/Kiwi_#{version}.zip"
  appcast 'http://yourhead.com/appcast/kiwi/appcast.xml',
          :sha256 => '349fab8b17b13487dbe180cf09b3a621a3e1999a1551c105764d7502066490f4'
  name 'Kiwi'
  homepage 'http://kiwi-app.net/'
  license :commercial

  app 'Kiwi.app'
end
