cask "tageditor" do
  version "1.0.15,1269"
  sha256 :no_check

  url "https://amvidia.com/downloads/tag-editor-mac.dmg"
  name "Tag Editor"
  desc "Spreadsheet style tag editor for audio files"
  homepage "https://amvidia.com/tag-editor"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  app "Tag Editor.app"

  zap trash: [
    "~/Library/Application Scripts/com.amvidia.Tag-Editor-FS",
    "~/Library/Containers/Tag Editor",
    "~/Library/Saved Application State/com.amvidia.Tag-Editor-FS.savedState",
  ]
end
