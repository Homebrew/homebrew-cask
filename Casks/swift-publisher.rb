cask :v1 => 'swift-publisher' do
  version :latest
  sha256 :no_check

  url 'http://s3.amazonaws.com/belightsoft/SwiftPublisher.dmg'
  homepage 'http://www.belightsoft.com/products/swiftpublisher/overview.php'
  license :closed

  app 'Swift Publisher 3.app'
end
