cask "mathpix-snipping-tool" do
  version "2.7.1.192"
  sha256 "fdf3b5fd89d9888051ec683baafdaff1cc138f734b49bc95a65463a38a271764"

  url "https://mathpix.com/dmg/SnippingTool-v#{version}.dmg"
  appcast "https://mathpix.com/appcast.xml"
  name "Mathpix Snipping Tool"
  desc "Scanner app for math and science"
  homepage "https://mathpix.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Mathpix Snipping Tool.app"

  zap trash: [
    "~/Library/Application Support/com.mathpix.snipping-tool-noappstore",
    "~/Library/Caches/com.crashlytics.data/com.mathpix.snipping-tool-noappstore",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.mathpix.snipping-tool-noappstore",
    "~/Library/Caches/com.mathpix.snipping-tool-noappstore",
    "~/Library/Preferences/com.mathpix.snipping-tool-noappstore.plist",
  ]
end
