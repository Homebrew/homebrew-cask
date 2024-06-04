cask "spectacle-editor" do
  version "0.1.6"
  sha256 "5dc93387bc6026dd44dbf2f88c9bf7730d931663d5b72f382c0a51bc6c57517b"

  url "https://github.com/plotly/spectacle-editor/releases/download/v#{version}/Spectacle.Editor-#{version}.dmg"
  name "Spectacle Editor"
  desc "Drag and drop Spectacle editor"
  homepage "https://github.com/plotly/spectacle-editor"

  disable! date: "2024-06-03", because: :no_longer_available

  app "Spectacle Editor.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.formidable.spectacle-editor.sfl*",
    "~/Library/Application Support/Spectacle Editor",
    "~/Library/Preferences/com.formidable.spectacle-editor.plist",
  ]
end
