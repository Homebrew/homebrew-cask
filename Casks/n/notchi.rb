cask "notchi" do
  version "1.1.3"
  sha256 "c760089dd31ae8dc5bf13a1ac73693ad160ef7b456dceda12b27c93dee19fa36"

  url "https://github.com/sk-ruban/notchi/releases/download/v#{version}/Notchi-#{version}.dmg",
      verified: "github.com/sk-ruban/notchi/"
  name "Notchi"
  desc "Notch companion for Claude Code"
  homepage "https://notchi.app/"

  auto_updates true
  depends_on macos: :sequoia

  app "Notchi.app"

  zap trash: [
    "~/Library/Caches/com.ruban.notchi",
    "~/Library/HTTPStorages/com.ruban.notchi",
    "~/Library/Preferences/com.ruban.notchi.plist",
    "~/Library/Saved Application State/com.ruban.notchi.savedState",
  ]
end
