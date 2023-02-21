cask "nheko" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.11.2"
  sha256 arm:   "e1250f41db1627d1db0acfbca85c05ffbe1c94cbb9d5066ce7655cd48a6fb6d3",
         intel: "bb53707f9d3cb2477dcac5f6d5c74dd0ec042d34f12d0b9acef9f3357f010d09"

  url "https://github.com/Nheko-Reborn/nheko/releases/download/v#{version}/nheko-v#{version}-#{arch}.dmg",
      verified: "github.com/Nheko-Reborn/nheko/"
  name "Nheko"
  desc "Desktop client for the Matrix protocol"
  homepage "https://nheko-reborn.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Nheko.app"

  zap trash: [
    "~/Library/Application Support/nheko",
    "~/Library/Caches/nheko",
    "~/Library/Preferences/com.nheko.nheko.plist",
    "~/Library/Saved Application State/io.github.nheko-reborn.nheko.savedState",
  ]
end
