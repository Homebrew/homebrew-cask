cask "cog-app" do
  version "3517,c362f218c"
  sha256 "69aca498080896ae19383796fead400b4c737803df2a5f46343d4fca9f99ad17"

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

  app "Cog.app"

  uninstall quit: "org.cogx.cog"

  zap trash: [
    "~/Library/Application Scripts/org.cogx.cog",
    "~/Library/Application Support/Cog",
    "~/Library/Caches/org.cogx.cog",
    "~/Library/Preferences/org.cogx.cog.plist",
  ]
end
