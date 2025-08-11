cask "nheko" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.12.1"
  sha256 arm:   "07390b869a5cef5226281b215a06c7d5c87b20b7bdfec9882c71ee005b2ac949",
         intel: "891ca3001a6d495e1921ced6dacee5005a41e7dc38eeaea58c20128c453dfad9"

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
