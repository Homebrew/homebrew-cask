cask "snagit" do
  version "2022.0.1"
  sha256 "b4b5b0e6a8eb66ab63f4a27f73ee62269be2c77e4b097708996d51b6d92f94ed"

  url "https://download.techsmith.com/snagitmac/releases/#{version.major[-2..]}#{version.minor_patch.no_dots}/snagit.dmg"
  name "Snagit"
  desc "Screen capture software"
  homepage "https://www.techsmith.com/screen-capture.html"

  livecheck do
    url "https://www.techsmith.com/redirect.asp?target=sufeedurl&product=snagitmac&ver=#{version}&lang=enu&os=mac"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}:#{item.url[%r{/(\d+)/[^/]+\.zip}i, 1]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "Snagit #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.TechSmith.Snagit*",
    "~/Library/Group Containers/*.com.techsmith.snagit",
    "~/Library/Preferences/com.TechSmith.Snagit*.plist",
    "~/Library/Preferences/com.techsmith.snagit.capturehelper*.plist",
    "~/Library/Saved Application State/com.TechSmith.Snagit*.savedState",
    "~/Library/WebKit/com.TechSmith.Snagit*",
  ]
end
