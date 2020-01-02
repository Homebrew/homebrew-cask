cask 'swiftformat-for-xcode' do
  version '0.43.4'
  sha256 '766384803485c30cd5b2c413434af9b47ccb83706f7b2717455b6b9aa99e4c75'

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
