cask "leapp" do
  arch arm: "-arm64"

  version "0.19.0"
  sha256 arm:   "f4cc58075be249ec89ac51ecb7365d72aff3d5d0e6308fc6a556c725b393ce6f",
         intel: "c1e1d7a52f9040498c27681c59bb544e92c96b599aa8676cc14e64952e18ddc5"

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
