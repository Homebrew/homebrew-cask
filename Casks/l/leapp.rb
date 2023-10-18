cask "leapp" do
  arch arm: "-arm64"

  version "0.21.0"
  sha256 arm:   "c09345657f04ede32a8a2a26e99c709ee1de144874e102645122a2ba4fd29b4d",
         intel: "f2123f9f2456d4b53c1ba4271716e09aed9fb2e4141d2ca5deccb509368d38ec"

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
