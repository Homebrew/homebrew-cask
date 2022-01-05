cask "appium-inspector" do
  version "2021.12.2"
  sha256 "5faf43f8c100bece91ad0c6b07d256ce0dea6ca7dae5af5a562b2c1b6d8a056a"

  url "https://github.com/appium/appium-inspector/releases/download/v#{version}/Appium-Inspector-#{version}-mac.zip"
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
