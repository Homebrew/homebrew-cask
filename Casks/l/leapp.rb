cask "leapp" do
  arch arm: "-arm64"

  version "0.26.1"
  sha256 arm:   "12219dced13feb0cb46e6f47dbda58588749de72b989635068af6cac338c1f8d",
         intel: "bdf54a3a26649980057e54d0d3cc757f6ce81d5aa02f55b7246b0d0168726790"

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
