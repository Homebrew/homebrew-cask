cask 'swift-publisher' do
  version '5.5.4'
  sha256 'c6b6327c4cb5a19d7d6dee2ce56678aa0fc866b2d272178d847965dbd2b41dca'

  # belightsoft.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://belightsoft.s3.amazonaws.com/SwiftPublisher.dmg'
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/swift-publisher/'

  depends_on macos: '>= :sierra'

  app "Swift Publisher #{version.major}.app"
end
