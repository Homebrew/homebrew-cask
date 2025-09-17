cask "linearmouse@beta" do
  version "0.10.2"
  sha256 "ed331d1597bdf93c7122c7120c08454e7ed3d254eb447dc4122f83a3355ef414"

  url "https://dl.linearmouse.org/v#{version}/LinearMouse.dmg"
  name "LinearMouse"
  desc "Customise mouse behavior"
  homepage "https://linearmouse.org/"

  livecheck do
    url "https://linearmouse.app/appcast.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  conflicts_with cask: "linearmouse"

  app "LinearMouse.app"

  uninstall quit:       "com.lujjjh.LinearMouse",
            login_item: "LinearMouse"

  zap trash: [
    "~/.config/linearmouse",
    "~/Library/Preferences/com.lujjjh.LinearMouse.plist",
  ]
end
