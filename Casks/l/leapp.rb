cask "leapp" do
  arch arm: "-arm64"

  version "0.20.1"
  sha256 arm:   "64ac26a3154707d46fd4f968030383deb894aa3feb5c33a2ee1b9ae1e90b080f",
         intel: "8c074c0aef32b722b30aac25678b5a788e07266665eae31096aea25588073321"

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
