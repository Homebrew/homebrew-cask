cask 'swift-publisher' do
  version '5.5.2'
  sha256 '09408c22818b543d33580baec053ee451d21872f142abb76ad19ffe49e827291'

  # belightsoft.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://belightsoft.s3.amazonaws.com/SwiftPublisher.dmg'
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/swift-publisher/'

  depends_on macos: '>= :sierra'

  app "Swift Publisher #{version.major}.app"
end
