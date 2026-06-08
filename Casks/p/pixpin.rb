cask "pixpin" do
  version "3.2.3.1"
  sha256 "e33db6e65fd967fa863dd4ca259366a7eab75e38a2c102584ce5373fff2614b4"

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
  depends_on :macos

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
