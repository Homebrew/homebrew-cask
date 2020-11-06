cask "beaker-browser" do
  version "0.8.10"
  sha256 "061016145bc8bad90773bfa449abfece5c4d0e4eb276e8ee4d26ce2578094e41"

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
