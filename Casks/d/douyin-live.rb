cask "douyin-live" do
  version "10.0.1"

  sha256 :no_check

  url "https://lf3-cdn-tos.bytegoofy.com/obj/tron-demo/7637411201357453594/442376885/10.0.1/darwin-universal/douyin-webcast-mate-v10.0.1-master-257b711c-darwin-universal.dmg"

  name "Douyin Webcast Mate"
  desc "Douyin live streaming application"
  homepage "https://streamingtool.douyin.com/"

  app "Douyin Webcast Mate.app"

  zap trash: [
    "~/Library/Application Support/Douyin Webcast Mate",
    "~/Library/HTTPStorages/com.bytedance.webcastmate.mac",
    "~/Library/Caches/com.bytedance.webcastmate.mac",
    "~/Library/Preferences/com.bytedance.webcastmate.mac.plist",
    "~/Library/Logs/Douyin Webcast Mate",
    "/Users/Shared/com.bytedance.webcastmate.mac"
  ]
end
