cask "mathpix-snipping-tool" do
  version "2.5.1.171"
  sha256 "a4dfe017f2934cc7eb185749af7d4f79a6054fa755fe24e1eff99df00c49ae53"

  url "https://mathpix.com/dmg/SnippingTool-v#{version}.dmg"
  appcast "https://mathpix.com/appcast.xml"
  name "Mathpix Snipping Tool"
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
