cask 'swift-publisher' do
  version '5.0.6'
  sha256 '779d9c4871a4e26ef3904682fc07ff30e62f5b3d3be17de3da6152cf47ee6627'

  # s3.amazonaws.com/belightsoft was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/belightsoft/SwiftPublisher.dmg'
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/swift-publisher/'

  app "Swift Publisher #{version.major}.app"
end
