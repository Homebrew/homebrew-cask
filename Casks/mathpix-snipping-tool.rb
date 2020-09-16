cask "mathpix-snipping-tool" do
  version "2.6.1.185"
  sha256 "9d03062ab1222b56b8ff793c9e9ba7f931e42d9df25bf3f5061e9d870f8f9c58"

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
