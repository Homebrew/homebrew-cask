cask "nheko" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.12.1"
  sha256 arm:   "b1be965ea57e538ee77088f9b7190524b4bf7ce9c348ab5dc707482884d80b5d",
         intel: "b0aea76c05876bddc7286ed717fd522e5ef24e076dc33b7b8149afb01bc1bd97"

  url "https://github.com/Nheko-Reborn/nheko/releases/download/v#{version}/nheko-v#{version}-#{arch}.dmg",
      verified: "github.com/Nheko-Reborn/nheko/"
  name "Nheko"
  desc "Desktop client for the Matrix protocol"
  homepage "https://nheko-reborn.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "nheko.app"

  zap trash: [
    "~/Library/Application Support/nheko",
    "~/Library/Caches/nheko",
    "~/Library/Preferences/com.nheko.nheko.plist",
    "~/Library/Saved Application State/io.github.nheko-reborn.nheko.savedState",
  ]
end
