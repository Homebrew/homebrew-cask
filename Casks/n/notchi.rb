cask "notchi" do
  version "1.1.4"
  sha256 "5a257baf184a5f1d6344564cba7e47f508255c68c66711f4396d88d9d0a84ea4"

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
