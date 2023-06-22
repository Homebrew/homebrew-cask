cask "leapp" do
  arch arm: "-arm64"

  version "0.18.0"
  sha256 arm:   "e817bf05eec57f3d60c2b2ca4cfc0385e594566e4540a0f1a462b6dae98956da",
         intel: "c8ef0d3b2079c5dd1071c01bde3c14ab31682d83be1d7270d7d9e59b9f907b57"

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
