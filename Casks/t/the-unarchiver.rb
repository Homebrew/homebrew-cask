cask "the-unarchiver" do
  version "4.3.7,145,1715684270"
  sha256 "71acd6ff6fdc3bf5508d3d43d7ded57373cfbc5fa87dbe6323de0d181fc64255"

  url "https://dl.devmate.com/com.macpaw.site.theunarchiver/#{version.csv.second}/#{version.csv.third}/TheUnarchiver-#{version.csv.second}.zip",
      verified: "devmate.com/com.macpaw.site.theunarchiver/"
  name "The Unarchiver"
  desc "Unpacks archive files"
  homepage "https://theunarchiver.com/"

  livecheck do
    url "https://updates.devmate.com/com.macpaw.site.theunarchiver.xml"
    regex(%r{/(\d+)/TheUnarchiver\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[2]},#{match[1]}"
    end
  end

  auto_updates true

  app "The Unarchiver.app"

  zap trash: [
    "~/Library/Caches/cx.c3.theunarchiver",
    "~/Library/Cookies/cx.c3.theunarchiver.binarycookies",
    "~/Library/Preferences/cx.c3.theunarchiver.plist",
    "~/Library/Saved Application State/cx.c3.theunarchiver.savedState",
  ]
end
