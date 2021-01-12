cask "appium" do
  version "1.20.0"
  sha256 "ab4772a58cbd2abed601c82c543c5c9f2862c7a736766a43656cdf6a30e8c94a"

  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/Appium-mac-#{version}.dmg",
      verified: "github.com/appium/appium-desktop/"
  appcast "https://github.com/appium/appium-desktop/releases.atom"
  name "Appium Desktop"
  homepage "https://appium.io/"

  app "Appium.app"

  zap trash: [
    "~/Library/Application Support/appium-desktop",
    "~/Library/Preferences/io.appium.desktop.helper.plist",
    "~/Library/Preferences/io.appium.desktop.plist",
    "~/Library/Saved Application State/io.appium.desktop.savedState",
  ]
end
