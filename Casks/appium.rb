cask "appium" do
  version "1.22.2"
  sha256 "6a6462429443f77126d024047613ca76552dab86a368551fcf797a9436e5059a"

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
