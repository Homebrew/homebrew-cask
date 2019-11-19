cask 'swift-publisher' do
  version '5.5.1'
  sha256 'f39f651dee13c8459e118eddd5c43e79ec8ddc9b2852610bdf7b43de0681bafb'

  # belightsoft.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://belightsoft.s3.amazonaws.com/SwiftPublisher.dmg'
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/swift-publisher/'

  depends_on macos: '>= :sierra'

  app "Swift Publisher #{version.major}.app"
end
