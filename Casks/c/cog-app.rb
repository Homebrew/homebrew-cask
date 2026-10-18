cask "cog-app" do
  version "3810,ef45e7982"
  sha256 "84090bbee6169219ddfdead16df990644f432fd8a526abf9b63cd3b22aa3c028"

  url "https://cogcdn.cog.losno.co/Cog-#{version.csv.second}.zip"
  name "Cog"
  desc "Audio player"
  homepage "https://cog.losno.co/"

  livecheck do
    url "https://cogcdn.cog.losno.co/mercury.xml"
    regex(%r{/Cog[._-](\h+)\.zip}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if !item&.short_version || match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Cog.app"

  uninstall quit: "org.cogx.cog"

  zap trash: [
    "~/Library/Application Scripts/group.org.cogx.cog",
    "~/Library/Application Scripts/org.cogx.cog",
    "~/Library/Application Support/Cog",
    "~/Library/Caches/org.cogx.cog",
    "~/Library/Containers/org.cogx.cog",
    "~/Library/Group Containers/group.org.cogx.cog",
    "~/Library/Preferences/org.cogx.cog.plist",
  ]
end
