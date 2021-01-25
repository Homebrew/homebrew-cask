cask "figma" do
  version "93.4.0"
  sha256 "85945f720ccfb93da3e0118a1605b5cfe7af1044e1cd6cff028914d26f978e25"

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
