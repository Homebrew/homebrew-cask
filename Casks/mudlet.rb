cask "mudlet" do
  version "4.14.0"
  sha256 "fbea26f85aae4713a6c10f39c67b01ad35778a1626d70c97c12e311d1faf1fd7"

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
