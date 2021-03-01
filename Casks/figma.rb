cask "figma" do
  version "95.7.0"
  sha256 "97ac619f54f30edfecbd876d4185927191cd16b1e4de64b577ba945c64bcce41"

  url "https://desktop.figma.com/mac/Figma-#{version}.zip"
  appcast "https://desktop.figma.com/mac/RELEASE.json"
  name "Figma"
  homepage "https://www.figma.com/"

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
