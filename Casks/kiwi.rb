cask 'kiwi' do
  version '3.2.0_1529'
  sha256 '0b85fc805ce91ee7fbc0f9207f9e5196d74019806d0078423cd5444334ab1619'

  # yourhead.com is the official download host per the vendor homepage
  url "http://yourhead.com/appcast/kiwi/Kiwi_#{version}.zip"
  appcast 'http://yourhead.com/appcast/kiwi/appcast.xml',
          :checkpoint => '1bec348ffe7f3cfe36bb2e16e97fedde9f60a3306c784bc180bf7877c9492cb3'
  name 'Kiwi'
  homepage 'http://kiwi-app.net/'
  license :commercial

  app 'Kiwi.app'
end
