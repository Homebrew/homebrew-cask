cask "betterandbetter" do
  version "2.7.6,2026040101"
  sha256 "dc1ccd0169c25476bd2c7578febce4858043d33eaf57f82c9636b116a4343d2b"

  url "https://cdn.better365.cn/BetterAndBetter/#{version.csv.second[0, 4]}/BetterAndBetter_#{version.csv.first}_#{version.csv.second}.zip"
  name "Better And Better"
  desc "Keyboard, mouse and touchpad motion gestures"
  homepage "https://www.better365.cn/bab2.html"

  # The Sparkle item version doesn't always strictly correspond to the number
  # the file name (i.e. there can be typos), so this matches the version parts
  # from the file name instead.
  livecheck do
    url "https://www.better365.cn/BetterAndBetterUpdate.xml"
    regex(/BetterAndBetter[._-]v?(\d+(?:[._]\d+)+)/i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next unless match

      match[1].tr("_", ",")
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
