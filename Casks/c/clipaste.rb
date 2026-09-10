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

  zap trash: [
    "~/Library/Application Support/com.ntwind.clipaste",
    "~/Library/Caches/com.ntwind.clipaste",
    "~/Library/Preferences/com.ntwind.clipaste.plist",
    "~/Library/Saved Application State/com.ntwind.clipaste.savedState",
  ]
end
