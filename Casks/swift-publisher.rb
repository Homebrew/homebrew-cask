cask 'swift-publisher' do
  version '3.3.8'
  sha256 'a7a7b44a1e0b7b596441796ef9b3071d9d8c889d469d00c8a37e94911b98f409'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/belightsoft/SwiftPublisher.dmg'
  appcast 'https://www.belightsoft.com/download/updates/appcast_SwiftPublisher3.xml',
          checkpoint: '04cf983120e06ad9958bb69ff7d2b47c2d2bd6ba4f5349eeb5002602f54195ca'
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/products/swiftpublisher/overview.php'
  license :closed

  app "Swift Publisher #{version.major}.app"
end
