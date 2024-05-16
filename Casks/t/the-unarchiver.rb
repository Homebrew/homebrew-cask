cask "the-unarchiver" do
  version "4.3.8,146,1715865652"
  sha256 "55c80d4fbcfb2ad740671c9af034b82ae937db700087732fff62fb2e9512d8d5"

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
