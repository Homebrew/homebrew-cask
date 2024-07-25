cask "mudlet" do
  version "4.18.4"
  sha256 "81545f36d845ea30d2b03d5ea5d34b550e1b84ed32367ef03d844bda41dc9be9"

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  name "Mudlet"
  desc "Multi-User Dungeon client"
  homepage "https://www.mudlet.org/"

  livecheck do
    url "https://www.mudlet.org/wp-content/files/"
    regex(/href=.*?Mudlet[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Mudlet.app"

  zap trash: [
    "~/Library/Preferences/org.mudlet.mudlet.plist",
    "~/Library/Saved Application State/org.mudlet.mudlet.savedState",
    "~/mudlet-data",
  ]

  caveats do
    requires_rosetta
  end
end
