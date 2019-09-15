cask 'swift-publisher' do
  version '5.5'
  sha256 '5d5bd338e5f52487fdf93624cdb7b0b3a559d197f57a21ba423ad9f47c3c0d9a'

  # belightsoft.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://belightsoft.s3.amazonaws.com/SwiftPublisher.dmg'
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/swift-publisher/'

  depends_on macos: '>= :sierra'

  app "Swift Publisher #{version.major}.app"
end
