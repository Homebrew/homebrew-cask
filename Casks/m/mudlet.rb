cask "mudlet" do
  version "4.18.5"
  sha256 "ccdabebadf309e5e7b1a87aa07734a9a374d8b431b1be55b61863ece3ac70eaa"

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
