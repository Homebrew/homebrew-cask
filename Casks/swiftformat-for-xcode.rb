cask 'swiftformat-for-xcode' do
  version '0.44.17'
  sha256 'd6b03aa4df9d483b26a8f07ad395b518a4b7c9f123c8ec5766de8d47c06c80b3'

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
