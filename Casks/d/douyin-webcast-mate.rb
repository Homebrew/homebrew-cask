cask "douyin-webcast-mate" do
  version "10.0.0,d169fb19,7637411201357453594,429701125"
  sha256 "2bba55f09ba0e81b38ea8bfe3b3cfde26b48f711db81de5f365280c9d06d29c4"

  url "https://lf3-cdn-tos.bytegoofy.com/obj/tron-demo/#{version.csv.third}/#{version.csv.fourth}/#{version.csv.first}/darwin-universal/douyin-webcast-mate-v#{version.csv.first}-master-#{version.csv.second}-darwin-universal.dmg"
  name "Douyin Webcast Mate"
  desc "Live streaming application"
  homepage "https://streamingtool.douyin.com/"

  livecheck do
    url "https://streamingtool.douyin.com/api/invoke/download-mac?arch=universal&isAutoUpdate=1"
    regex(%r{/([^/]+)/([^/]+)/[^/]+/darwin-universal/
    douyin[._-]webcast[._-]mate[._-]v?(\d+(?:\.\d+)+)-master-([a-f0-9]+)-darwin-universal\.dmg}imx)
    strategy :header_match do |headers, regex|
      match = headers["location"].match(regex)
      next if match.blank?

      "#{match[3]},#{match[4]},#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: :ventura

  app "Douyin Webcast Mate.app"

  zap trash: [
    "/Users/Shared/com.bytedance.webcastmate.mac",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bytedance.webcastmate.mac.sfl*",
    "~/Library/Application Support/Douyin Webcast Mate",
    "~/Library/Caches/com.bytedance.webcastmate.mac",
    "~/Library/HTTPStorages/com.bytedance.webcastmate.mac",
    "~/Library/Logs/Douyin Webcast Mate",
    "~/Library/Preferences/com.bytedance.webcastmate.mac.plist",
  ]
end
