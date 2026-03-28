cask "mathmagic-lite" do
  version "10.41"
  sha256 :no_check

  url "http://www.mathmagic.com/download/installers/MathMagicLite.64-bit.zip"
  name "MathMagic Lite"
  desc "Editor and format converter for mathematical expressions"
  homepage "http://www.mathmagic.com/"

  livecheck do
    url "http://www.mathmagic.com/download/download.html"
    regex(/<a href="[^">]*?MathMagicLite.64-bit.zip">MathMagic Lite v?(\d+(?:\.\d+)+) for Mac[^\n]+64-bit/i)
  end

  depends_on macos: ">= :big_sur"

  suite "MathMagic Lite 64-bit"

  zap trash: [
        "~/Documents/MathMagic Lite User Data5",
        "~/Library/Application Scripts/com.InfoLogic.MathMagic-Lite",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.infologic.mathmagic-lite.sfl*",
        "~/Library/Caches/com.InfoLogic.MathMagic-Lite",
        "~/Library/Containers/com.InfoLogic.MathMagic-Lite",
        "~/Library/HTTPStorages/com.InfoLogic.MathMagic-Lite",
        "~/Library/Preferences/com.InfoLogic.MathMagic_Lite.Defaults.plist",
        "~/Library/Preferences/MathMagic Lite #{version.major}.1.pref.plist",
        "~/Library/Preferences/MathMagic Lite #{version.major}.pref.plist",
      ],
      rmdir: "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments"

  caveats do
    requires_rosetta
  end
end
