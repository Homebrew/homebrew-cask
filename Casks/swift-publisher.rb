cask 'swift-publisher' do
  version '5.0.11'
  sha256 'baa4eab5d771328b519087167d2c269169ad207febb5bbf11c3ee4827f1817ed'

  # belightsoft.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://belightsoft.s3.amazonaws.com/SwiftPublisher.dmg'
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/swift-publisher/'

  app "Swift Publisher #{version.major}.app"
end
