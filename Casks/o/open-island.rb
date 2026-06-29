cask "open-island" do
  version "1.1.4"
  sha256 "443848e39bbbb8ac7332b82117f5374641a655a8e48ea4e85b86defee4fd8e74"

  url "https://github.com/Octane0411/open-vibe-island/releases/download/v#{version}/Open.Island.dmg"
  name "Open Island"
  desc "Native companion app for AI coding agents"
  homepage "https://github.com/Octane0411/open-vibe-island"

  auto_updates true
  depends_on macos: :sonoma

  app "Open Island.app"

  zap trash: [
    "~/Library/Application Support/open-island",
    "~/Library/Application Support/OpenIsland",
    "~/Library/Caches/app.openisland.OpenIsland",
    "~/Library/HTTPStorages/app.openisland.OpenIsland",
    "~/Library/HTTPStorages/app.openisland.OpenIsland.binarycookies",
    "~/Library/Preferences/app.openisland.OpenIsland.plist",
    "~/Library/Saved Application State/app.openisland.OpenIsland.savedState",
  ]
end
