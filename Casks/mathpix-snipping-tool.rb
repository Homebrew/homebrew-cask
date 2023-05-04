cask "mathpix-snipping-tool" do
  version "3.4.3.4"
  sha256 "f72e0e8fa1cf824a1365ac1b9b62c7ca31e45c64cb6136d13cb64d69fae0d78e"

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
  depends_on macos: ">= :sierra"

  app "Mathpix Snipping Tool.app"

  zap trash: [
    "~/Library/Application Support/com.mathpix.snipping-tool-noappstore",
    "~/Library/Caches/com.crashlytics.data/com.mathpix.snipping-tool-noappstore",
    "~/Library/Caches/com.mathpix.snipping-tool-noappstore",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.mathpix.snipping-tool-noappstore",
    "~/Library/Preferences/com.mathpix.snipping-tool-noappstore.plist",
  ]
end
