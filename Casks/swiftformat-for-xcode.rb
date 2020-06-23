cask 'swiftformat-for-xcode' do
  version '0.44.14'
  sha256 '9c04404d8742b40e6c024e22cce42b8ee2730b92c8706ebd1b1f03387a34fb66'

  url "https://github.com/nicklockwood/SwiftFormat/archive/#{version}.zip"
  appcast 'https://github.com/nicklockwood/SwiftFormat/releases.atom'
  name 'SwiftFormat for Xcode'
  homepage 'https://github.com/nicklockwood/SwiftFormat'

  depends_on macos: '>= :sierra'

  app "SwiftFormat-#{version}/EditorExtension/SwiftFormat for Xcode.app"

  zap trash: [
               '~/Library/Application Scripts/com.charcoaldesign.SwiftFormat-for-Xcode',
               '~/Library/Application Scripts/com.charcoaldesign.SwiftFormat-for-Xcode.SourceEditorExtension',
               '~/Library/Containers/com.charcoaldesign.SwiftFormat-for-Xcode',
               '~/Library/Group Containers/com.charcoaldesign.SwiftFormat',
             ]
end
