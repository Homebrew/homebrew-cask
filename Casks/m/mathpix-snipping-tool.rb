cask "mathpix-snipping-tool" do
  version "3.4.9.15"
  sha256 "5557ee96b3057ca79a9c64c4c47ac80a07143a9f28268242333feb31abbded01"

  url "https://mathpix.com/dmg/SnippingTool-v#{version}.dmg"
  name "Mathpix Snipping Tool"
  desc "Scanner app for math and science"
  homepage "https://mathpix.com/"

  livecheck do
    url "https://mathpix.com/appcast.xml"
    strategy :sparkle do |item|
      item.url[/SnippingTool[._-]v?(\d+(?:\.\d+)+)\.dmg/i, 1]
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Mathpix Snipping Tool.app"

  zap trash: [
    "~/Library/Application Support/com.mathpix.snipping-tool-noappstore",
    "~/Library/Caches/com.crashlytics.data/com.mathpix.snipping-tool-noappstore",
    "~/Library/Caches/com.mathpix.snipping-tool-noappstore",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.mathpix.snipping-tool-noappstore",
    "~/Library/HTTPStorages/com.mathpix.snipping-tool-noappstore",
    "~/Library/Preferences/com.mathpix.snipping-tool-noappstore.plist",
    "~/Library/WebKit/com.mathpix.snipping-tool-noappstore",
  ]
end
