cask "appium" do
  version "1.22.0"
  sha256 "9d185b0bc905db84a199c71c7a5415dc5fd1d39c52487c4419eac21b9554ef9c"

  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/Appium-Server-GUI-mac-#{version}.dmg",
      verified: "github.com/appium/appium-desktop/"
  name "Appium Server Desktop GUI"
  desc "Graphical frontend to Appium automation server"
  homepage "https://appium.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Appium Server GUI.app"

  zap trash: [
    "~/Library/Application Support/appium-desktop",
    "~/Library/Preferences/io.appium.desktop.helper.plist",
    "~/Library/Preferences/io.appium.desktop.plist",
    "~/Library/Saved Application State/io.appium.desktop.savedState",
  ]
end
