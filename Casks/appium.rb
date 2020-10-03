cask "appium" do
  version "1.18.2"
  sha256 "5301c530f1e6378a8be515b735f83d18e4741333e58da921d0890a49ee3e80e6"

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
