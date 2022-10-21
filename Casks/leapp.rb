cask "leapp" do
  arch arm: "-arm64"

  version "0.15.2"
  sha256 arm:   "e8dfe8997bd5f6879e948d983623c8903c127317c83287f964abd68557eb39e5",
         intel: "89af918c650e6e2c49bfbe3283bf5fc3c6db101ff9203c1eb14b33495b1f10c4"

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
