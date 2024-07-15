cask "mudlet" do
  version "4.18.3"
  sha256 "55a61c27952161a406a2aba550a47316fa1fac381bddf1fe0bb38b302b315e4c"

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
