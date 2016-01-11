cask 'swift-publisher' do
  version '3.3.8'
  sha256 'a7a7b44a1e0b7b596441796ef9b3071d9d8c889d469d00c8a37e94911b98f409'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/belightsoft/SwiftPublisher.dmg'
  appcast 'https://www.belightsoft.com/download/updates/appcast_SwiftPublisher3.xml',
          :sha256 => '150948d411a38f911a4ae196981dbc1f4a61f0f9e1bbcf8945236b598b23a7be'
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/products/swiftpublisher/overview.php'
  license :closed

  app "Swift Publisher #{version.major}.app"
end
