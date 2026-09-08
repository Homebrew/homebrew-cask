cask "pixpin" do
  version "3.4.3.2"
  sha256 "ab09b0502d16d31e697161c4e3080ea1561e887e7eaeea0e66032acdd541b6d2"

  url "https://down.pixpin.cn/PixPin_mac_#{version}_uni.dmg"
  name "PixPin"
  desc "Screenshot tool"
  homepage "https://pixpin.cn/"

  livecheck do
    url "https://pixpin.cn/download/"
    regex(/href=.*?PixPin(?:[._-]mac)?[._-]v?(\d+(?:\.\d+)+)(?:[._-]uni)?\.dmg/i)
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
