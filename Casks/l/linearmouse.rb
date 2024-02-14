cask "linearmouse" do
  version "0.9.5"
  sha256 "4f6e47d8298306ddc9e73682f20cbcecfc8938d3ec0d9a45ed2e5e92c47382b0"

  url "https://github.com/linearmouse/linearmouse/releases/download/v#{version}/LinearMouse.dmg",
      verified: "github.com/linearmouse/linearmouse/"
  name "LinearMouse"
  desc "Customise mouse behavior"
  homepage "https://linearmouse.org/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "LinearMouse.app"

  uninstall quit: "com.lujjjh.LinearMouse"

  zap trash: "~/Library/Preferences/com.lujjjh.LinearMouse.plist"
end
