cask 'swift-publisher' do
  version '5.0.7'
  sha256 '4301c0e6712eb71105e399ebdae337515956ae57ad633c90b156dddb735154df'

  # s3.amazonaws.com/belightsoft was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/belightsoft/SwiftPublisher.dmg'
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/swift-publisher/'

  app "Swift Publisher #{version.major}.app"
end
