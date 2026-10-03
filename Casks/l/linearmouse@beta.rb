cask "linearmouse@beta" do
  version "0.12.0"
  sha256 "aff50f3c818ced5a4e22a6174c872e3223797d43263fe647d7f955f9be0fcf3c"

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
