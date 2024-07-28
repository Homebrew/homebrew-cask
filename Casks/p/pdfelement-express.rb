cask "pdfelement-express" do
  version "1.2.1"
  sha256 :no_check

  url "https://download.wondershare.com/cbs_down/mac-pdfelement-express_full4133.dmg"
  name "PDFelement Express"
  desc "PDF editor"
  homepage "https://pdf.wondershare.com/pdfelement-express-mac.html"

  livecheck do
    url "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=4133"
    regex(/<Version>(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: ">= :sierra"

  app "PDFelement Express.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wondershare.pdfelement.express.sfl*",
    "~/Library/Application Support/com.wondershare.PDFelement.Express",
    "~/Library/Application Support/PDFelement",
    "~/Library/Application Support/wondershare",
    "~/Library/Caches/com.wondershare.PDFelement.Express",
    "~/Library/Caches/PDFelement",
    "~/Library/HTTPStorages/com.wondershare.PDFelement.Express",
    "~/Library/Preferences/com.wondershare.PDFelement.Express-custom.plist",
    "~/Library/Preferences/com.wondershare.PDFelement.Express.plist",
    "~/Library/Saved Application State/com.wondershare.PDFelement.Express.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
