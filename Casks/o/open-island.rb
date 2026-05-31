cask "open-island" do
  version "1.1.2"
  sha256 "d72306f0217045bc93f357f20442af23cc8b40b89d29588def7f20918176e639"

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
