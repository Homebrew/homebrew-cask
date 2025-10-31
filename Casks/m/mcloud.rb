cask "mcloud" do
  version "4.1.1,001"
  sha256 "9221f85930576b22e92e3818b486735da55e2d6c9a4c6de2061a3ad7fc9ddcbf"

  url "https://yun.mcloud.139.com/mCloudPc/macV#{version.csv.first.no_dots}/mCloud-#{version.csv.first}-#{version.csv.second}.dmg"
  name "mcloud"
  name "中国移动云盘"
  desc "China Mobile Cloud Drive"
  homepage "https://yun.139.com/"

  livecheck do
    url "https://user.yun.139.com/user/version/check", post_json: {
      clientType: 8,
      version:    version.csv.first.to_s,
    }
    regex(/"version":"(\d+\.\d+\.\d+)","versionNo":\d{4}(\d{3})/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "中国移动云盘.app"

  zap trash: [
    "~/Library/Application Support/mCloud",
    "~/Library/Preferences/com.cmic.mcloudForMacOSV2.plist",
  ]
end
