cask "beaker-browser" do
  version "1.0.0"
  sha256 "97ad8bd0382c3bcb99e7fbf6c50218368922b0e20e13a531d4fd1bd2b47ad44f"

  # github.com/beakerbrowser/beaker/ was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}.dmg"
  appcast "https://github.com/beakerbrowser/beaker/releases.atom"
  name "Beaker Browser"
  desc "Experimental peer-to-peer web browser"
  homepage "https://beakerbrowser.com/"

  auto_updates true

  app "Beaker Browser.app"

  zap trash: [
    "~/Library/Application Support/Beaker Browser",
    "~/Library/Application Support/Caches/beaker-browser-updater",
    "~/Library/Caches/com.pfrazee.beaker-browser",
    "~/Library/Caches/com.pfrazee.beaker-browser.ShipIt",
    "~/Library/Preferences/com.pfrazee.beaker-browser.plist",
    "~/Library/Saved Application State/com.pfrazee.beaker-browser.savedState",
  ]
end
