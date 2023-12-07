cask "tageditor" do
  version "1.0.15,1212"
  sha256 :no_check

  url "https://amvidia.com/download-tag-editor-mac-native.dmg.zip"
  name "Tag Editor"
  desc "Spreadsheet style tag editor for audio files"
  homepage "https://amvidia.com/tag-editor"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Tag Editor.app"

  zap trash: [
    "~/Library/Application Scripts/com.amvidia.Tag-Editor-FS",
    "~/Library/Containers/Tag Editor",
    "~/Library/Saved Application State/com.amvidia.Tag-Editor-FS.savedState",
  ]
end
