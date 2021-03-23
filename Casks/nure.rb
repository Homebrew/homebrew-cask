cask "nure" do
  version "0.2.1"
  sha256 "e6566238cb42d59e3ad0ae32eec4fcb09d0e892ec4cf21cc93ea48da3dbef9c1"

  url "https://update.nure.io/download/flavor/default/#{version}/osx_64/Nure-#{version}-mac.zip"
  name "Nure"
  desc "Invest, exchange, and track crypto assets"
  homepage "https://nure.io/"

  livecheck do
    url "https://update.nure.io/update/osx_64/latest-mac.yml"
    strategy :electron_builder
  end

  app "Nure.app"

  uninstall quit:      "app.com.nure",
            launchctl: "app.com.nure"

  zap trash: [
    "~/Library/Application Support/Nure",
    "~/Library/LaunchAgents/NureHelper.plist",
    "~/Library/Preferences/app.com.nure.plist",
    "~/Library/Saved Application State/app.com.nure.savedState",
    "~/.nure-helper",
  ]
end
