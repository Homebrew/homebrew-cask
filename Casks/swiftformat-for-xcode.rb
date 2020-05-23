cask 'swiftformat-for-xcode' do
  version '0.44.11'
  sha256 '32b06d90e40cabc9048744320c097f6ef4f1a02e3ed3ee6f4cce6f763fb04716'

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
