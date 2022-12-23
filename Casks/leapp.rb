cask "leapp" do
  arch arm: "-arm64"

  version "0.17.0"
  sha256 arm:   "a56196fa289dbd1263f331aeed55559514bf359af8b2284befdce06990b4d681",
         intel: "023932f20048b45d440dfa99e25173bdf3d716d8e8300bb8bb7c47a419cee8e1"

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
