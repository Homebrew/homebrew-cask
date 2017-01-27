cask 'swift-publisher' do
  version '4.0.4'
  sha256 '743204d13b5945eda94a1b2d7b4589b522f680a1d4f4b5f83c0163c2409ec801'

  # s3.amazonaws.com/belightsoft was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/belightsoft/SwiftPublisher.dmg'
  appcast 'https://www.belightsoft.com/download/updates/appcast_SwiftPublisher3.xml',
          checkpoint: '04cf983120e06ad9958bb69ff7d2b47c2d2bd6ba4f5349eeb5002602f54195ca'
  name 'Swift Publisher'
  homepage 'https://www.belightsoft.com/products/swiftpublisher/'

  app "Swift Publisher #{version.major}.app"
end
