cask "mathpix-snipping-tool" do
  version "2.6.0.183"
  sha256 "fb02b2d31716bfc0d1df084269cd95f51fe4fcd05854e9d1e45653cdf0365b4f"

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
