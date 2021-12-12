cask "appium-inspector" do
  version "2021.9.2"
  sha256 "747ff0c644ed236e1fbfa9e7c0e0b304ed9bdb56cd9a87179b4045b063a41f6a"

  url "https://github.com/appium/appium-inspector/releases/download/v#{version}/Appium-Inspector-#{version}-mac.zip"
  name "Appium Inspector GUI"
  desc "GUI inspector for mobile apps and more, powered by a Appium server"
  homepage "https://github.com/appium/appium-inspector"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Appium Inspector.app"

  zap trash: [
    "~/Library/Application Support/appium-inspector",
    "~/Library/Saved Application State/io.appium.inspector.savedState",
    "~/Library/Preferences/io.appium.inspector.plist",
    "~/Library/Logs/Appium Inspector",
  ]
end
