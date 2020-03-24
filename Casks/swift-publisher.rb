cask 'swift-publisher' do
  version '5.5.3'
  sha256 '8c9eb3f31d599d04b36c0ff1dae192960c343adeb18a4439c90cabf5f97c0afa'

  # belightsoft.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://belightsoft.s3.amazonaws.com/SwiftPublisher.dmg'
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/swift-publisher/'

  depends_on macos: '>= :sierra'

  app "Swift Publisher #{version.major}.app"
end
