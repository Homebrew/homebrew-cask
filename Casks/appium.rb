cask "appium" do
  version "1.18.0-1"
  sha256 "0d1f0746bebdd4fbcfcbabc190d272304e9a01f6c7f87f31d0f51cf39bc38328"

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
