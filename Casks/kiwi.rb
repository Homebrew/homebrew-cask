cask 'kiwi' do
  version '3.2.0_1529'
  sha256 '0b85fc805ce91ee7fbc0f9207f9e5196d74019806d0078423cd5444334ab1619'

  # yourhead.com/appcast/kiwi was verified as official when first introduced to the cask
  url "http://yourhead.com/appcast/kiwi/Kiwi_#{version}.zip"
  appcast 'http://yourhead.com/appcast/kiwi/appcast.xml',
          checkpoint: '70b8a5bf1e8f8d3becd7b20c79a7a85b7b4b30729e064c6fa9f98fdea3c8bd4f'
  name 'Kiwi'
  homepage 'http://kiwi-app.net/'

  app 'Kiwi.app'
end
