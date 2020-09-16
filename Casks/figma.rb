cask "figma" do
  version :latest
  sha256 :no_check

  url "https://desktop.figma.com/mac/Figma.zip"
  name "Figma"
  homepage "https://www.figma.com/"

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
