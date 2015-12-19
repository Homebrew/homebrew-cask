cask 'swift-publisher' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/belightsoft/SwiftPublisher.dmg'
  name 'Swift Publisher'
  appcast 'https://www.belightsoft.com/download/updates/appcast_SwiftPublisher3.xml',
          :sha256 => '73bf29fcb6fa689fa32e5a1666ffb8db22401a6033a91e2866fc95d1be7ffd96'
  homepage 'https://www.belightsoft.com/products/swiftpublisher/overview.php'
  license :closed

  app 'Swift Publisher 3.app'
end
