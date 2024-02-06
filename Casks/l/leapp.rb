cask "leapp" do
  arch arm: "-arm64"

  version "0.24.6"
  sha256 arm:   "102464e4fedb775efb573d4750d96089488a685e2563195aadeb5a682420f9fb",
         intel: "3008940572e6bf72c8a25f16d3920bebc5f837d354437f8fd4f2dd72995710ce"

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
