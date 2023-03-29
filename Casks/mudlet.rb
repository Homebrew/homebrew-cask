cask "mudlet" do
  version "4.17.1"
  sha256 "6b4d1831446be9ec4c08dbbecd33bab36186b25780a8b26fd613ac6b12396d36"

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  name "Mudlet"
  desc "Multi-User Dungeon client"
  homepage "https://www.mudlet.org/"

  livecheck do
    url "https://github.com/Mudlet/Mudlet"
  end

  depends_on macos: ">= :high_sierra"

  app "Mudlet.app"

  zap trash: [
    "~/Library/Preferences/org.mudlet.mudlet.plist",
    "~/Library/Saved Application State/org.mudlet.mudlet.savedState",
    "~/mudlet-data",
  ]
end
