cask "appium" do
  version "1.21.0"
  sha256 "bdcb55be5c8193466f1bf6665e8f821711423e87abd7c836618a8fdded57eeea"

  url "https://github.com/appium/appium-desktop/releases/download/v#{version}/Appium-mac-#{version}.dmg",
      verified: "github.com/appium/appium-desktop/"
  name "Appium Desktop"
  desc "Graphical frontend to Appium automation server"
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
