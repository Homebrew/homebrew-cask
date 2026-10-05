cask "linearmouse@beta" do
  version "0.13.0-beta.3"
  sha256 "0a2120cd0a8e8461a1dfdf954fbd1c2b83ed9b7b7a9356a0123789421e71611f"

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
  depends_on :macos

  app "LinearMouse.app"

  uninstall quit:       "com.lujjjh.LinearMouse",
            login_item: "LinearMouse"

  zap trash: [
    "~/.config/linearmouse",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lujjjh.linearmouse.sfl*",
    "~/Library/Preferences/com.lujjjh.LinearMouse.plist",
  ]
end
