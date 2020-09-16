cask "appium" do
  version "1.18.0-2"
  sha256 "072b71d3a5680a4f7b67372c6439da8ff4ee9390344fcca2d8ab3f9e1332a331"

  # github.com/appium/appium-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/Appium-mac-#{version}.dmg"
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
