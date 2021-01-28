cask "appium" do
  version "1.19.1"
  sha256 "de5a2efdc200a39f8bbe5d60d90106e4bb041ef4d4cc2e4f6fe1625b720c7e63"

  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/Appium-mac-#{version}.dmg",
      verified: "github.com/appium/appium-desktop/"
  name "Appium Desktop"
  homepage "https://appium.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Appium.app"

  zap trash: [
    "~/Library/Application Support/appium-desktop",
    "~/Library/Preferences/io.appium.desktop.helper.plist",
    "~/Library/Preferences/io.appium.desktop.plist",
    "~/Library/Saved Application State/io.appium.desktop.savedState",
  ]
end
