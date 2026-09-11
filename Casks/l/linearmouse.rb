cask "linearmouse" do
  version "0.11.4"
  sha256 "755127ba3cb053c50615dc1240ed7ad7fd7a337ab3f3bbb890a06644cd62d85f"

  url "https://dl.linearmouse.org/v#{version}/LinearMouse.dmg"
  name "LinearMouse"
  desc "Customise mouse behavior"
  homepage "https://linearmouse.org/"

  livecheck do
    url "https://linearmouse.app/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
  end

  auto_updates true
  conflicts_with cask: "linearmouse@beta"
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
