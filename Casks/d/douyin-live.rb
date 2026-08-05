cask "douyin-live" do
  version "10.0.1"
  sha256 :no_check

  url "https://lf3-cdn-tos.bytegoofy.com/obj/tron-demo/7637411201357453594/442376885/10.0.1/darwin-universal/douyin-webcast-mate-v10.0.1-master-257b711c-darwin-universal.dmg"
  name "Douyin Webcast Mate"
  desc "Live streaming application"
  homepage "https://streamingtool.douyin.com/"

  depends_on :macos

  app "Douyin Webcast Mate.app"

  zap trash: [
    "/Users/Shared/com.bytedance.webcastmate.mac",
    "~/Library/Application Support/Douyin Webcast Mate",
    "~/Library/Caches/com.bytedance.webcastmate.mac",
    "~/Library/HTTPStorages/com.bytedance.webcastmate.mac",
    "~/Library/Logs/Douyin Webcast Mate",
    "~/Library/Preferences/com.bytedance.webcastmate.mac.plist",
  ]
end
