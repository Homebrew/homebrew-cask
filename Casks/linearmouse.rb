cask "linearmouse" do
  version "0.6.0"
  sha256 "677ce2a4107833931dc9bd7df89ab77b2d2a42df7586b3bbcc7a38520d688adb"

  url "https://github.com/linearmouse/linearmouse/releases/download/v#{version}/LinearMouse.dmg",
      verified: "github.com/linearmouse/linearmouse/"
  name "LinearMouse"
  desc "Customize mouse behavior"
  homepage "https://linearmouse.org/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "LinearMouse.app"

  uninstall quit: "com.lujjjh.LinearMouse"

  zap trash: "~/Library/Preferences/com.lujjjh.LinearMouse.plist"
end
