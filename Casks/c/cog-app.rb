cask "cog-app" do
  version "3421,fe734699b"
  sha256 "778f611c8d96ebf7c0e50df7982ec2db6dbcb70e5c02341b94f231cfa7cd6257"

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
