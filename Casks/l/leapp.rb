cask "leapp" do
  arch arm: "-arm64"

  version "0.25.3"
  sha256 arm:   "b9232390b137ea83c5d3d6b6742787fedbaeea215012690626dd8125f3f19ecb",
         intel: "4a8cac35798598817b6afe6911a793e7ba65d1280ee1ab4d1a179d9b0ce00588"

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
