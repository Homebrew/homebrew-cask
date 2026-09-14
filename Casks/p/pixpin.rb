cask "pixpin" do
  version "3.5.5.1"
  sha256 "efe097abe580b78139001f024b6fb18aa906e0d43fce192c98aa4e587e71e26e"

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
