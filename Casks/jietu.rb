cask "jietu" do
  version "2.2.2,11054"
  sha256 "6b8c906a1f004e11aa956916fb3e652a3b72baee77d76f09e02a4199db8bddc4"

  url "https://dldir1.qq.com/invc/tt/QB/Jietu/Jietu_#{version.before_comma}(#{version.after_comma}).dmg"
  appcast "https://jietu.qq.com/"
  name "Jietu"
  name "截图"
  homepage "https://jietu.qq.com/"

  app "Jietu.app"

  uninstall quit:      "com.tencent.JietuMac",
            launchctl: "com.tencent.JietuHelperMac"

  zap trash: [
    "~/Library/Application Support/Jietu",
    "~/Library/Caches/com.tencent.JietuMac",
    "~/Library/Preferences/com.tencent.JietuMac.plist",
  ]
end
