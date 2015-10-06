cask :v1 => 'swift-publisher' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/belightsoft/SwiftPublisher.dmg'
  name 'Swift Publisher'
  appcast 'https://www.belightsoft.com/download/updates/appcast_SwiftPublisher3.xml',
          :sha256 => '150948d411a38f911a4ae196981dbc1f4a61f0f9e1bbcf8945236b598b23a7be'
  homepage 'https://www.belightsoft.com/products/swiftpublisher/overview.php'
  license :closed

  app 'Swift Publisher 3.app'
end
