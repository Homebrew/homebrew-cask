cask 'swift-publisher' do
  version '4.0.4'
  sha256 '743204d13b5945eda94a1b2d7b4589b522f680a1d4f4b5f83c0163c2409ec801'

  # s3.amazonaws.com/belightsoft was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/belightsoft/SwiftPublisher.dmg'
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml",
          checkpoint: 'd6a4ec3a83b57ec88a5618ce44c518faa4618caa03e00234afd1d8da972af4ec'
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/products/swiftpublisher/'

  app "Swift Publisher #{version.major}.app"
end
