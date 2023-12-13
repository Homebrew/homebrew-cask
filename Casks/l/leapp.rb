cask "leapp" do
  arch arm: "-arm64"

  version "0.23.0"
  sha256 arm:   "f39c2b5db16397df893b3e6ae021207a5a798a3e7e85779cb38544e19dd11c27",
         intel: "bfaa3ec3f55454f36be199a7e2e263f120bc63464f2e0778d0dbaabd59a3412f"

  url "https://asset.noovolari.com/#{version}/Leapp-#{version}#{arch}.dmg",
      verified: "asset.noovolari.com/"
  name "Leapp"
  desc "Cloud credentials manager"
  homepage "https://www.leapp.cloud/"

  livecheck do
    url "https://asset.noovolari.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "Leapp.app"

  zap trash: [
    "~/.Leapp",
    "~/Library/Application Support/Leapp",
    "~/Library/Logs/Leapp",
    "~/Library/Preferences/com.leapp.app.plist",
    "~/Library/Saved Application State/com.leapp.app.savedState",
  ]
end
