cask 'swift-publisher' do
  version '4.0.5'
  sha256 '387bcfac5c3c1c45bb3ac3e0a88bae99b1388d621aa14d58896fe19c08dd889f'

  # s3.amazonaws.com/belightsoft was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/belightsoft/SwiftPublisher.dmg'
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml",
          checkpoint: '0af71d81b2ef429cb3aec5f5ecf204d371a145c79a80afc848376b2016fcbe38'
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/products/swiftpublisher/'

  app "Swift Publisher #{version.major}.app"
end
