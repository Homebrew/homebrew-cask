cask "cog-app" do
  version "3882,1b150f7e5"
  sha256 "e6e901785ed956d63e555841b227241bfb5b3d87a3130d3b0b2f0c3c96c1f55c"

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
