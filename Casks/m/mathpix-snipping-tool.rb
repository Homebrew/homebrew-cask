cask "mathpix-snipping-tool" do
  version "3.4.21.4"
  sha256 "fc197bae9c337aaccc7121dca3295e156e73613bd4af934fe0741be184e4e586"

  url "https://mathpix.com/dmg/SnippingTool-v#{version}.dmg"
  name "Mathpix Snipping Tool"
  desc "Scanner app for math and science"
  homepage "https://mathpix.com/"

  livecheck do
    url "https://mathpix.com/appcast.xml"
    regex(/SnippingTool[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :sparkle do |item, regex|
      item.url[regex, 1]
    end
  end

  auto_updates true
  depends_on :macos

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
