cask "mudlet" do
  version "4.18.2"
  sha256 "0e390b23721e3f33a780ab72abb59cd55f37eee8a682c43d4ce9e98ab6e73162"

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
