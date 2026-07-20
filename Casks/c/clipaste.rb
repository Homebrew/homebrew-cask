cask "clipaste" do
  version "1.0.3"
  sha256 "c46be1234db1e42898a0bea74277ff5c8248c710e8f0e6fed146720ab1dcf910"

  url "https://www.ntwind.com/files/Clipaste_#{version}-mac.dmg"
  name "Clipaste"
  desc "Clipboard history manager"
  homepage "https://www.ntwind.com/cross-platform/clipaste.html"

  livecheck do
    url "https://www.ntwind.com/download/Clipaste_latest-mac.dmg"
    strategy :header_match
    regex(/Clipaste[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on macos: :big_sur

  app "Clipaste.app"

  zap trash: [
    "~/Library/Application Support/com.ntwind.clipaste",
    "~/Library/Caches/com.ntwind.clipaste",
    "~/Library/Preferences/com.ntwind.clipaste.plist",
    "~/Library/Saved Application State/com.ntwind.clipaste.savedState",
  ]
end
