cask "flykey" do
  version "1.7.2,2026043002"
  sha256 "e89ce587dcdbbd9a47f638d9cea53e8bb40701a9f1e9ce13006ca3a0c881341c"

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

  depends_on :macos

  app "FlyKey.app"

  zap trash: [
    "~/Library/HTTPStorages/cn.better365.FlyKey",
    "~/Library/HTTPStorages/cn.better365.FlyKey.binarycookies",
    "~/Library/Preferences/cn.better365.FlyKey.plist",
  ]
end
