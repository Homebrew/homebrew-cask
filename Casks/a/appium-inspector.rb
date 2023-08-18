cask "appium-inspector" do
  version "2023.8.2"
  sha256 "b220dae4cfda7684c72ca4a8b61af25b90258ff1e11282544cc8eb114e758842"

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
