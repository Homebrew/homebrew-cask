cask "screenshot-remote" do
  version "2.0.3"
  sha256 "283b00877fb93c358a6e4533732640acc05be029a32cf8c3d0e41a51dca04877"

  url "https://www.ntwind.com/files/ScreenshotRemote_#{version}-mac.dmg"
  name "Screenshot Remote"
  desc "Capture screenshots on remote computers over a local network"
  homepage "https://www.ntwind.com/remote/screenshot.html"

  livecheck do
    url "https://www.ntwind.com/download/ScreenshotRemote_latest-mac.dmg"
    strategy :header_match
    regex(/ScreenshotRemote[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on :macos

  app "Screenshot Remote.app"

  uninstall quit: "com.ntwind.remote.screenshot"

  zap trash: [
    "~/Library/Application Scripts/com.ntwind.remote.screenshot",
    "~/Library/Application Scripts/com.ntwind.remote.screenshot-LaunchAtLoginHelper",
    "~/Library/Containers/com.ntwind.remote.screenshot",
    "~/Library/Containers/com.ntwind.remote.screenshot-LaunchAtLoginHelper",
  ]
end
