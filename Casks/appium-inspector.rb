cask "appium-inspector" do
  version "2022.6.1"
  sha256 "7ef8836838143406d46e72b04dba00125ce4b2cea1d439187bf173f76d2eef65"

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
