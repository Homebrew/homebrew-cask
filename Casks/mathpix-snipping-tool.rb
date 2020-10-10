cask "mathpix-snipping-tool" do
  version "2.7.0.188"
  sha256 "7a3a1e12be41767bbb11e49a49a8b24ff0686dfa1cf17fe1954e15c5ff330ea8"

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
