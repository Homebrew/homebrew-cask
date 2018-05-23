cask 'swift-explorer' do
  version '1.0.9'
  sha256 'd4ab0c876ed4761b384975aa48cd9271d81c8497abd0415ac7334294efccb57b'

  # bintray.com/artifact/download/roikku was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/roikku/generic/SwiftExplorer-#{version}.dmg"
  name 'Swift Explorer'
  homepage 'http://www.619.io/swift-explorer'

  app "SwiftExplorer-#{version}.app"

  zap trash: [
               "~/Library/Application Support/SwiftExplorer-#{version}",
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/swiftexplorer.sfl*',
               '~/Library/Preferences/SwiftExplorer.plist',
               '~/Library/Saved Application State/SwiftExplorer.savedState',
             ]
end
