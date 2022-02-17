cask "linearmouse" do
  version "0.5.0"
  sha256 "8454375debb377cc789fa4bc3fb286156bbfd3e77aa7c57c17e2670bd71225db"

  url "https://github.com/linearmouse/linearmouse/releases/download/v#{version}/LinearMouse.dmg",
      verified: "github.com/linearmouse/linearmouse/"
  name "LinearMouse"
  desc "Customize mouse behavior"
  homepage "https://linearmouse.org/"

  depends_on macos: ">= :catalina"

  app "LinearMouse.app"

  uninstall quit: "com.lujjjh.LinearMouse"

  zap trash: "~/Library/Preferences/com.lujjjh.LinearMouse.plist"
end
