cask "notchi" do
  version "1.3.1"
  sha256 "18a596a7d3764af21ec2d4766b48a45082a9db3b025280623b026f6d4ee2a3da"

  url "https://github.com/sk-ruban/notchi/releases/download/v#{version}/Notchi-#{version}.dmg"
  name "Notchi"
  desc "Notch companion for Claude Code"
  homepage "https://notchi.app/"

  auto_updates true
  depends_on macos: :sequoia

  app "Notchi.app"

  zap trash: [
    "~/Library/Application Support/Notchi",
    "~/Library/Caches/com.ruban.notchi",
    "~/Library/HTTPStorages/com.ruban.notchi",
    "~/Library/Preferences/com.ruban.notchi.plist",
    "~/Library/Saved Application State/com.ruban.notchi.savedState",
  ]
end
