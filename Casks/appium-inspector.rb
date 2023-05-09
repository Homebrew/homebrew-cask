cask "appium-inspector" do
  version "2023.5.1"
  sha256 "d3366c7fb755c5a4c20bdc48cbbe9d3504d060e7bcd82a7005732b49f542482b"

  url "https://github.com/appium/appium-inspector/releases/download/v#{version}/Appium-Inspector-#{version}-universal-mac.zip"
  name "Appium Inspector GUI"
  desc "GUI inspector for mobile apps"
  homepage "https://github.com/appium/appium-inspector/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Appium Inspector.app"

  zap trash: [
    "~/Library/Application Support/appium-inspector",
    "~/Library/Logs/Appium Inspector",
    "~/Library/Preferences/io.appium.inspector.plist",
    "~/Library/Saved Application State/io.appium.inspector.savedState",
  ]
end
