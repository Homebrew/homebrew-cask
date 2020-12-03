cask "figma" do
  version "91.7.0"
  sha256 "086abe63cabdae7a1be00812d592a76fe2a26227eb4a77a7fa80f38d8f12aafb"

  url "https://desktop.figma.com/mac/Figma-#{version}.zip"
  appcast "https://desktop.figma.com/mac/RELEASE.json"
  name "Figma"
  homepage "https://www.figma.com/"

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
