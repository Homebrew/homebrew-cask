cask "macloggerdx@beta" do
  version "6.62b12"
  sha256 :no_check

  url "https://www.dogparksoftware.com/files/MacLoggerDX.beta.dmg"
  name "MacLoggerDX"
  desc "Ham radio logging and rig control software"
  homepage "https://www.dogparksoftware.com/MacLoggerDX.html"

  livecheck do
    url :homepage
    regex(/Download:\s*v?(\d+(?:\.\d+)+b\d+)/i)
  end

  conflicts_with cask: "macloggerdx"
  depends_on :macos

  app "MacLoggerDX.app"

  uninstall quit: "com.dogparksoftware.MacLoggerDX"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.dogparksoftware.macloggerdx.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/MacLoggerDX Help*",
    "~/Library/Caches/com.dogparksoftware.MacLoggerDX",
    "~/Library/HTTPStorages/com.dogparksoftware.MacLoggerDX",
    "~/Library/Preferences/com.dogparksoftware.MacLoggerDX*.plist",
    "~/Library/WebKit/com.dogparksoftware.MacLoggerDX",
  ]
end
