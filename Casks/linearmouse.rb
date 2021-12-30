cask "linearmouse" do
  version "0.3.3"
  sha256 "769dc71bd30956f3af31690c3b2d4ee8334e3c319f86fd63b3f84ad6fc35ecfe"

  url "https://github.com/lujjjh/LinearMouse/releases/download/v#{version}/LinearMouse.dmg",
      verified: "github.com/lujjjh/LinearMouse/"
  name "LinearMouse"
  desc "Customize mouse behavior"
  homepage "https://linearmouse.org/"

  depends_on macos: ">= :catalina"

  app "LinearMouse.app"

  zap trash: "~/Library/Preferences/com.lujjjh.LinearMouse.plist"
end
