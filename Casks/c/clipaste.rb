cask "clipaste" do
  version "1.0.1"
  sha256 "9f4106c8ddd27fa34cc9e4533262798d5f44282d13a7dfc965bbeb8944f9f885"

  url "https://www.ntwind.com/files/Clipaste_#{version}-mac.dmg"
  name "Clipaste"
  desc "Clipboard history manager"
  homepage "https://www.ntwind.com/cross-platform/clipaste.html"

  livecheck do
    url "https://www.ntwind.com/download/Clipaste_latest-mac.dmg"
    strategy :header_match
    regex(/Clipaste[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "Clipaste.app"

  zap trash: [
    "~/Library/Application Support/com.ntwind.clipaste",
    "~/Library/Caches/com.ntwind.clipaste",
    "~/Library/Preferences/com.ntwind.clipaste.plist",
    "~/Library/Saved Application State/com.ntwind.clipaste.savedState",
  ]
end
