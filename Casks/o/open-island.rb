cask "open-island" do
  version "1.2.1"
  sha256 "1ac791b91603e88140a8146cb2d6f0faf3f35f2fb470b39abb158dbc596e2c0d"

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
