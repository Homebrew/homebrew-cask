cask "nure" do
  version "0.2.1"
  sha256 :no_check

  url "https://update.nure.io/download/latest/osx_64"
  appcast "https://update.nure.io/update/osx_64/latest-mac.yml"
  name "Nure"
  desc "Simple DeFi tools for everyone"
  homepage "https://nure.io/"

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
