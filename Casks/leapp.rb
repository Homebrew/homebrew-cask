cask "leapp" do
  arch arm: "-arm64"

  version "0.14.3"
  sha256 arm:   "1ce2dcccf2c625002fdfb819293792593b2ef18308db9d399e7d932dee6740f5",
         intel: "5e38744553d6031b89e40cf9be6e16d6e94e43d0c2ee20940ba11fae8d05d827"

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
