cask "gemini" do
  version "2.10.1,406,1781745541"
  sha256 "c96dff8fa9f02becfab943a7e5b9c67eb054f1c7b41fb62b5caa5ef0536852dc"

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
  depends_on :macos

  app "Gemini #{version.major}.app"

  zap trash: [
        "/Users/Shared/Gemini #{version.major}",
        "~/Library/Application Support/Gemini*",
        "~/Library/Caches/com.macpaw.site.Gemini*",
        "~/Library/Cookies/com.macpaw.site.Gemini*.binarycookies",
        "~/Library/Logs/com.macpaw.site.Gemini*",
        "~/Library/Preferences/com.macpaw.site.Gemini*",
        "~/Library/Saved Application State/com.macpaw.site.Gemini*",
      ],
      rmdir: "~/.gemini"
end
