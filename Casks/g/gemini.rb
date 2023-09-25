cask "gemini" do
  version "2.9.10,398,1695371750"
  sha256 "bd2048361927c6fceecfbccefc7c95f7707c99aa0e2b155ab309f81e877e2a0d"

  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/#{version.csv.second}/#{version.csv.third}/Gemini#{version.major}-#{version.csv.second}.zip",
      verified: "dl.devmate.com/"
  name "Gemini"
  desc "Disk space cleaner that finds and deletes duplicated and similar files"
  homepage "https://macpaw.com/gemini"

  livecheck do
    url "https://updates.devmate.com/com.macpaw.site.Gemini#{version.major}.xml"
    regex(%r{/(\d+)/Gemini\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Gemini #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Gemini*",
    "~/Library/Caches/com.macpaw.site.Gemini*",
    "~/Library/Cookies/com.macpaw.site.Gemini*.binarycookies",
    "~/Library/Logs/com.macpaw.site.Gemini*",
    "~/Library/Preferences/com.macpaw.site.Gemini*",
    "~/Library/Saved Application State/com.macpaw.site.Gemini*",
    "/Users/Shared/Gemini #{version.major}",
  ]
end
