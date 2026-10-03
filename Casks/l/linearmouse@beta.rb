cask "linearmouse@beta" do
  version "0.13.0-beta.1"
  sha256 "ac68f685b32727f5a79d25668ab686ca732b7dbb7ebc8e96c6c7061936a7878c"

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
