cask "linearmouse" do
  version "0.5.1"
  sha256 "10c9e2e886a8e57e881f72f34218a3d6b04c203bc903056205b3d9c881bc4d57"

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
