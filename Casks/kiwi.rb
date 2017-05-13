cask 'kiwi' do
  version '3.2.0_1529'
  sha256 '0b85fc805ce91ee7fbc0f9207f9e5196d74019806d0078423cd5444334ab1619'

  # yourhead.com/appcast/kiwi was verified as official when first introduced to the cask
  url "http://yourhead.com/appcast/kiwi/Kiwi_#{version}.zip"
  appcast 'http://yourhead.com/appcast/kiwi/appcast.xml',
          checkpoint: '9ffbcd98c3c9a67ad4f810eb12fc3dee48e8b5246c2f37cecb3f9bfd398cb205'
  name 'Kiwi'
  homepage 'http://kiwi-app.net/'

  app 'Kiwi.app'
end
