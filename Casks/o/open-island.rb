cask "open-island" do
  version "1.1.9"
  sha256 "898e873bcc8022e4279a189ab3cb40013d99fbb1dd9716fc64b3d67b788b397f"

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
