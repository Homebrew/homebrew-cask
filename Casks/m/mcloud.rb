cask "mcloud" do
  version "4.2.0,000"
  sha256 "d0dadba4141efafba59f9ca3a620645cb965ea4b500ba3a9ba42201c81147cb6"

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
    regex(/mCloud[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :json do |json, regex|
      match = json.dig("data", "url")&.match(regex)
      next if match.blank?

      match[1].tr("-", ",")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "中国移动云盘.app"

  zap trash: [
    "~/Library/Application Support/mCloud",
    "~/Library/Preferences/com.cmic.mcloudForMacOSV2.plist",
  ]

  caveats do
    requires_rosetta
  end
end
