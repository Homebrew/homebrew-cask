cask 'swift-explorer' do
  version '1.0.8'
  sha256 'c06acbd2d181b0f1dc3d60e55ee0d503673b0f742675acc1869a4dfd440bc025'

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
