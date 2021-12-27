cask "linearmouse" do
  version "0.3.2"
  sha256 "2bf0fabfc3ac48f041bf443bbd3033353bf898f2860d2c963f6df405da613fed"

  url "https://github.com/lujjjh/LinearMouse/releases/download/v#{version}/LinearMouse.dmg",
      verified: "github.com/lujjjh/LinearMouse/"
  name "LinearMouse"
  desc "Customize mouse behavior"
  homepage "https://linearmouse.org/"

  depends_on macos: ">= :catalina"

  app "LinearMouse.app"

  zap trash: "~/Library/Preferences/com.lujjjh.LinearMouse.plist"
end
