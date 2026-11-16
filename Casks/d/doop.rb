cask "doop" do
  version "0.13.0"
  sha256 "359598d82ccd4f9f196d74496e1c6c7c4a6c73d343fbebbef9c2819e57a0d57e"

  url "https://github.com/kgoedecke/doop/releases/download/desktop-v#{version}/doop_#{version}_universal.dmg"
  name "Doop"
  desc "Multiplayer design canvas for humans and AI agents"
  homepage "https://doop.design/"

  depends_on macos: "13.1"

  app "doop.app"

  zap trash: [
    "~/Library/Application Support/design.doop.desktop",
    "~/Library/Caches/design.doop.desktop",
    "~/Library/Preferences/design.doop.desktop.plist",
    "~/Library/Saved Application State/design.doop.desktop.savedState",
  ]

  livecheck do
    url "https://github.com/kgoedecke/doop/releases"
    strategy :page_match
    regex(/desktop-v(\d+(?:\.\d+)+)/i)
  end
end
