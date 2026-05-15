cask "notchi" do
  version "1.1.0"
  sha256 "85273d0246a40fce0911d771bcc2286345f873f3b01bbfaff009b719642ef877"

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
