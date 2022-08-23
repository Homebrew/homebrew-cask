cask "linearmouse" do
  version "0.7.3"
  sha256 "9dd93eec1f27dee5573ee6962a51c17b0be3b49869daa3dd690ce22c46c1adea"

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
