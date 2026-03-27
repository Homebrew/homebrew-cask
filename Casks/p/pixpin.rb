cask "pixpin" do
  version "3.0.8.0"
  sha256 "9af50a980bb8cda1a2b9cdb786cbc4426eee4385949811ab62acb6d4006c1dfc"

  url "https://download.pixpin.cn/PixPin_cn_zh-cn_#{version}_uni.dmg"
  name "PixPin"
  desc "Screenshot tool"
  homepage "https://pixpin.cn/"

  livecheck do
    url "https://api.viewdepth.cn/app_info?app_id=pixpin&update_type=0&sys=mac&ver=0.0.0"
    strategy :json do |json|
      json.dig("ver_info", "version")
    end
  end

  auto_updates true

  app "PixPin.app"

  uninstall quit: "com.depthpicture.PixPin"

  zap trash: [
    "~/Library/Application Support/PixPin",
    "~/Library/Caches/com.depthpicture.PixPin",
    "~/Library/Logs/PixPin",
    "~/Library/Preferences/com.depthpicture.PixPin.plist",
    "~/Library/Saved Application State/com.depthpicture.PixPin.savedState",
  ]
end
