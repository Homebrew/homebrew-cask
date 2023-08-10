cask "leapp" do
  arch arm: "-arm64"

  version "0.18.5"
  sha256 arm:   "a3b4d17ecb63e19e31cfc96abb4aaf85764cb4c8c51f3c830bcace461e15b199",
         intel: "d0f72ea89b3a42ea4df319d27cb44918bb6e262afa63ceb4c6852564faa20d07"

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
