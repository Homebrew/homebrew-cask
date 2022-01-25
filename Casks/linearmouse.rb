cask "linearmouse" do
  version "0.3.4"
  sha256 "2a9a94e48d2e2c5bfa683dd0abf1795b2277e606e2739e39c699a9cd528de87b"

  url "https://github.com/linearmouse/linearmouse/releases/download/v#{version}/LinearMouse.dmg",
      verified: "github.com/linearmouse/linearmouse/"
  name "LinearMouse"
  desc "Customize mouse behavior"
  homepage "https://linearmouse.org/"

  depends_on macos: ">= :catalina"

  app "LinearMouse.app"

  uninstall quit: [
    "com.lujjjh.LinearMouse",
  ]

  zap trash: "~/Library/Preferences/com.lujjjh.LinearMouse.plist"
end
