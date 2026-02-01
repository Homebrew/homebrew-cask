cask "pixpin" do
  version "2.4.9.6"
  sha256 "bebbf572c378588504482b0fe6ea5a6f2bde505e169fb34f16766586e8dbba60"

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
