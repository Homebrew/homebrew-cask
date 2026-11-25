cask "clipaste" do
  version "1.0.5"
  sha256 "89daed9982e60c560730e3c2edbffc0098c6aebdca208c23563f17e355e88ee8"

  url "https://www.ntwind.com/files/Clipaste_#{version}-mac.dmg"
  name "Clipaste"
  desc "Clipboard history manager"
  homepage "https://www.ntwind.com/cross-platform/clipaste.html"

  livecheck do
    url "https://www.ntwind.com/download/Clipaste_latest-mac.dmg"
    strategy :header_match
    regex(/Clipaste[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on :macos

  app "Clipaste.app"

  uninstall quit: "com.ntwind.clipaste"

  zap trash: [
    "~/Library/Application Scripts/com.ntwind.clipaste",
    "~/Library/Application Scripts/com.ntwind.clipaste-LaunchAtLoginHelper",
    "~/Library/Containers/com.ntwind.clipaste",
    "~/Library/Containers/com.ntwind.clipaste-LaunchAtLoginHelper",
  ]
end
