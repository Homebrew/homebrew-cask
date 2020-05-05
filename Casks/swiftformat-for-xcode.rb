cask 'swiftformat-for-xcode' do
  version '0.44.9'
  sha256 '77ae1d4a3b8e289a914092f76cfd688e1606d9deb4ca89b12fb2c9b907cfc508'

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
