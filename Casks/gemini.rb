cask "gemini" do
  version "2.9.7,395,1665659494"
  sha256 "aacb8dd16c138fdc7addf75c3b57a555907a00e8fc8d33169bcf351d0826ee22"

  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/#{version.csv.second}/#{version.csv.third}/Gemini#{version.major}-#{version.csv.second}.zip",
      verified: "dl.devmate.com/com.macpaw.site.Gemini"
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
