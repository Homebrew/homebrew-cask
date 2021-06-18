cask "gemini" do
  version "2.8.9,381:1622733157"
  sha256 "558fd155d7e09846aff668e53309fa96407cf0230bc53b8914c947607a1e2c47"

  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/#{version.after_comma.before_colon}/#{version.after_colon}/Gemini#{version.major}-#{version.after_comma.before_colon}.zip",
      verified: "dl.devmate.com/com.macpaw.site.Gemini"
  name "Gemini"
  desc "Disk space cleaner that finds and deletes duplicated and similar files"
  homepage "https://macpaw.com/gemini"

  livecheck do
    url "https://updates.devmate.com/com.macpaw.site.Gemini#{version.major}.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}:#{item.url[%r{/(\d+)/Gemini.*?\.zip}i, 1]}"
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
