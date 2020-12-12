cask "appium" do
  version "1.18.3"
  sha256 "3933e8d8ecbdd29a281050d338ab3fcccca9d6feca936623026cbfe84223a604"

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
