cask "appium" do
  version "1.22.3"
  sha256 "b536499e070560197b2310732d1cfee42835468c78b77d0b804d2cf2fda72f1d"

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
