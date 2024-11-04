cask "tiles" do
  version "1.3.2,03b500a8"
  sha256 "b051ea7e5048bac0f7a72b6dd893bb1a02cf47ecde6def9f103d2be8e122f01e"

  url "https://updates.sempliva.com/tiles/Tiles-#{version.csv.second}.dmg"
  name "Sempliva Tiles"
  desc "Window manager"
  homepage "https://www.sempliva.com/tiles/"

  livecheck do
    url "https://updates.sempliva.com/tiles/updates.xml"
    regex(/Tiles[._-](\h+)\.dmg/i)
    strategy :sparkle do |item, regex|
      id = item.url[regex, 1]
      next if id.blank?

      "#{item.short_version},#{id}"
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Tiles.app"

  uninstall launchctl: "com.sempliva.TilesHelper",
            quit:      "com.sempliva.Tiles"

  zap trash: [
    "~/Library/Application Support/com.sempliva.Tiles",
    "~/Library/Caches/com.sempliva.Tiles",
    "~/Library/Preferences/com.semplive.Tiles.plist",
  ]
end
