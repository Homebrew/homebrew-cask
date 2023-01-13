cask "nheko" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.11.0"
  sha256 arm:   "116b087b47162865f662bfa1f31827364896f14649db243e3a3924c761424f4d",
         intel: "870191d4ae911e02c7c7b7105a06edfdfb76661fdd10843a6870f697b68af414"

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
