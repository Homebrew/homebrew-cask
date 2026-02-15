cask "flykey" do
  version "1.7.1,2025121201"
  sha256 "983462ef05ae9b935c351a0dc67e70491414eac600ea9a2b90d06791360b0243"

  url "https://cdn.better365.cn/FlyKey/#{version.csv.second[0..3]}/FlyKey#{version.csv.first}_#{version.csv.second}.zip"
  name "FlyKey"
  desc "One-click display of shortcuts"
  homepage "https://www.better365.cn/FlyKey.html"

  # The version suffix in the file name can differ from the `sparkle:version`,
  # so we match the values from the file name in the URL.
  livecheck do
    url "https://www.better365.cn/flykeyofflineupdate.xml"
    regex(/FlyKey[._-]?v?(\d+(?:\.\d+)+)[_-](\d+)/)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next unless match

      "#{match[1]},#{match[2]}"
    end
  end

  app "FlyKey.app"

  zap trash: [
    "~/Library/HTTPStorages/cn.better365.FlyKey",
    "~/Library/HTTPStorages/cn.better365.FlyKey.binarycookies",
    "~/Library/Preferences/cn.better365.FlyKey.plist",
  ]
end
