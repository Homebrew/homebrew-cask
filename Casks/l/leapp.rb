cask "leapp" do
  arch arm: "-arm64"

  version "0.24.1"
  sha256 arm:   "cb8fc155d43bc716be93ccb6e02c2ad2c77d70a500227e1eaa1d541c9fec6339",
         intel: "7ff50abd0dd5ba9346c4299ee80687503b5c089312815c65fa93151bd877a260"

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
