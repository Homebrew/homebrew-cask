cask "figma" do
  version "91.8.0"
  sha256 "65a10a8b7f080f914963c4ce59164823eddb596ad0ae8c8812e88eff31c5dd6b"

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
