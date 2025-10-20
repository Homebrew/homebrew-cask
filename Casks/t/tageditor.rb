cask "tageditor" do
  version "2.0.1,1343"
  sha256 :no_check

  url "https://amvidia.com/downloads/tag-editor-mac.dmg"
  name "Tag Editor"
  desc "Spreadsheet style tag editor for audio files"
  homepage "https://amvidia.com/tag-editor"

  livecheck do
    url :url
    strategy :extract_plist
  end

  # The url is unversioned, but the download returns an app with a version number
  rename "Tag Editor*.app", "Tag Editor.app"

  app "Tag Editor.app"

  zap trash: [
    "~/Library/Application Scripts/com.amvidia.Tag-Editor-FS",
    "~/Library/Containers/com.amvidia.Tag-Editor-FS",
    "~/Library/Containers/Tag Editor",
    "~/Library/Saved Application State/com.amvidia.Tag-Editor-FS.savedState",
  ]
end
