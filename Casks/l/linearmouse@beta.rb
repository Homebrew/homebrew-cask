cask "linearmouse@beta" do
  version "0.13.0-beta.6"
  sha256 "9f18929423938a9f068806ab2a0c86f69c33e566c16dd5ab5c990ed382df0e11"

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
