cask "nheko" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.11.1"
  sha256 arm:   "5a3d2a82033a0caa1f14d9599204e56ac8673ab4f230099a683eccae429b81ee",
         intel: "8a2cd11d8f08fda375ab1a17a45187cc74073488edc8de81551358b25353f72e"

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
