cask "leapp" do
  arch arm: "-arm64"

  version "0.15.0"
  sha256 arm:   "9f47fdfcdaf8d37fb29f4a21b46394182e6df5c92be4468c0a6679ea1905bc45",
         intel: "1bd4ab24508e9a0fd1f5ea779e52ca25da7cbc8743294ae84ba1032d8f0b7a0a"

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
