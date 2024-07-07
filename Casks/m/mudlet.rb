cask "mudlet" do
  version "4.18.1"
  sha256 "21c089822969d4c757d38144a31765c31a4ee293e022bb529555304a61af08a9"

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
