cask "mcloud" do
  arch arm: "arm", intel: "intel"

  version "4.3.2,000"
  sha256 arm:   "2aa43502306353ca57d91dbf10c5c52592ec11f907ef0fdb65f01ee0c96709e2",
         intel: "76c1d6853a49899963194eb88d88aa90a059c76ddbc490bc3e144995891ea056"

  url "https://yun.mcloud.139.com/mCloudPc/macV#{version.csv.first.no_dots}/mCloud-#{version.csv.first}-#{version.csv.second}-#{arch}.dmg"
  name "mcloud"
  name "中国移动云盘"
  desc "China Mobile Cloud Drive"
  homepage "https://yun.139.com/"

  # The update API only returns the Intel build.
  livecheck do
    url "https://user.yun.139.com/user/version/check", post_json: {
      clientType: 8,
      version:    version.csv.first.to_s,
    }
    regex(/mCloud[._-]v?(\d+(?:[.-]\d+)+)[._-]intel\.dmg/i)
    strategy :json do |json, regex|
      match = json.dig("data", "url")&.match(regex)
      next if match.blank?

      match[1].tr("-", ",")
    end
  end

  auto_updates true
  depends_on :macos

  app "中国移动云盘.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.cmic.mcloudformacosv2.sfl*",
    "~/Library/Application Support/mCloud",
    "~/Library/Preferences/com.cmic.mcloudForMacOSV2.plist",
  ]
end
