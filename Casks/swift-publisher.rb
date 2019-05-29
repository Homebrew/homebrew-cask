cask 'swift-publisher' do
  version '5.0.10'
  sha256 '030c7bf16e7a124347fc7a6892607f9f4e4d12f4c70b7b1f1f5e7f28618844e5'

  # s3.amazonaws.com/belightsoft was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/belightsoft/SwiftPublisher.dmg'
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/swift-publisher/'

  app "Swift Publisher #{version.major}.app"
end
