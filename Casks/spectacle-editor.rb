cask "spectacle-editor" do
  version "0.1.6"
  sha256 "5dc93387bc6026dd44dbf2f88c9bf7730d931663d5b72f382c0a51bc6c57517b"

  # github.com/FormidableLabs/spectacle-editor/ was verified as official when first introduced to the cask
  url "https://github.com/FormidableLabs/spectacle-editor/releases/download/v#{version}/Spectacle.Editor-#{version}.dmg"
  appcast "https://github.com/FormidableLabs/spectacle-editor/releases.atom"
  name "Spectacle Editor"
  desc "Drag and drop Spectacle editor"
  homepage "https://formidable.com/open-source/spectacle-editor/"

  app "Spectacle Editor.app"

  zap trash: [
    "~/Library/Application Support/Spectacle Editor",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.formidable.spectacle-editor.sfl*",
    "~/Library/Preferences/com.formidable.spectacle-editor.plist",
  ]
end
