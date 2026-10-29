cask "pixpin" do
  version "3.6.6.0"
  sha256 "f0a9e6122daf2d30191d08730198cf5cc5abe5595d7cf85612ed7b3c19347873"

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
