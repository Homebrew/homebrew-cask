cask "figma" do
  version "96.4.0"
  sha256 "eb15e232b76de6e882fa4dfaf7db25c448319c41ef5692ef0fd5bd53e564c7d7"

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
