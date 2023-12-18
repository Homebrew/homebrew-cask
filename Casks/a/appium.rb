cask "appium" do
  version "1.22.3-4"
  sha256 "907265e27ba854f4ec66c2fea55ac2f8756264783d69b000d447b841d407e753"

  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/Appium-Server-GUI-mac-#{version}.dmg",
      verified: "github.com/appium/appium-desktop/"
  name "Appium Server Desktop GUI"
  desc "Graphical frontend to Appium automation server"
  homepage "https://appium.io/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Appium Server GUI.app"

  zap trash: [
    "~/Library/Application Support/appium-desktop",
    "~/Library/Preferences/io.appium.desktop.helper.plist",
    "~/Library/Preferences/io.appium.desktop.plist",
    "~/Library/Saved Application State/io.appium.desktop.savedState",
  ]
end
