cask 'swift-explorer' do
  version '1.0.7'
  sha256 '24b73711f5555aff19cf2b48edfb781488778fca1d0568c4d9b56b829e70f395'

  # bintray.com/artifact/download/roikku was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/roikku/generic/SwiftExplorer-#{version}-1.0.dmg"
  name 'Swift Explorer'
  homepage 'http://www.619.io/swift-explorer'

  app "SwiftExplorer-#{version}.app"

  zap delete: [
                "~/Library/Application Support/SwiftExplorer-#{version}",
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/swiftexplorer.sfl',
                '~/Library/Preferences/SwiftExplorer.plist',
                '~/Library/Saved Application State/SwiftExplorer.savedState',
              ]
end
