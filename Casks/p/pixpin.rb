cask "pixpin" do
  version "3.3.5.7"
  sha256 "302cdbff56a68f7faf8957da3e9467a22ee49ea78fcc4e2bd88fb3341fad229e"

  url "https://down.pixpin.cn/PixPin_mac_#{version}_uni.dmg"
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
