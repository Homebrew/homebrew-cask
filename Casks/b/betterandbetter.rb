cask "betterandbetter" do
  version "2.7.2,2025112601"
  sha256 "0252182bf1b222a982500064da02c9e329c4c1e9b12dde6d910ad19df6cbbe5d"

  url "https://cdn.better365.cn/BetterAndBetter/#{version.csv.second[0, 4]}/BetterAndBetter_#{version.csv.first}_#{version.csv.second}.zip"
  name "Better And Better"
  desc "Keyboard, mouse and touchpad motion gestures"
  homepage "https://www.better365.cn/bab2.html"

  livecheck do
    url "https://www.better365.cn/BetterAndBetterUpdate.xml"
    strategy :sparkle do |item|
      "#{item.short_version.strip},#{item.version.strip}"
    end
  end

  auto_updates true

  app "BetterAndBetter.app"

  zap trash: [
    "~/Library/Application Support/BetterAndBetter",
    "~/Library/Application Support/cn.better365.BetterAndBetter",
    "~/Library/Caches/cn.better365.BetterAndBetter",
    "~/Library/HTTPStorages/cn.better365.BetterAndBetter",
    "~/Library/HTTPStorages/cn.better365.BetterAndBetter.binarycookies",
    "~/Library/Preferences/cn.better365.BetterAndBetter.plist",
    "~/Library/Preferences/com.better365.BetterAndBetterHelper.plist",
    "~/Library/WebKit/com.better365.BetterAndBetter",
  ]
end
