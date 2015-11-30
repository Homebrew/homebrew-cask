cask :v1 => 'swift-explorer' do
  version '1.0.7'
  sha256 '24b73711f5555aff19cf2b48edfb781488778fca1d0568c4d9b56b829e70f395'

  # Stored on google drive
  url 'https://bintray.com/artifact/download/roikku/generic/SwiftExplorer-1.0.7-1.0.dmg'
  name 'Swift Explorer'
  homepage 'http://www.619.io/swift-explorer'
  license :apache

  app "SwiftExplorer-#{version}.app"

  zap :delete => [
        '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/swiftexplorer.sfl',
        "~/Library/Application Support/SwiftExplorer-#{version}",
        '~/Library/Preferences/SwiftExplorer.plist',
        '~/Library/Saved Application State/SwiftExplorer.savedState'
      ]
end
