cask 'swift-publisher' do
  version '5.0'
  sha256 '6b353c818b894921fc32a3c13eae082675c7355e50c83c43014c8c78dcf29e17'

  # s3.amazonaws.com/belightsoft was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/belightsoft/SwiftPublisher.dmg'
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml",
          checkpoint: 'd3cdfd79924fa72276b850efa6e1e04827cb06d4266f86dd9c0ddafe5099ea38'
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/swift-publisher/'

  app "Swift Publisher #{version.major}.app"
end
