cask "appium" do
  version "1.20.2"
  sha256 "6f7c402e056530d7c43439d10fddd35393a76c90521dbf8471dc468fe9847f40"

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
