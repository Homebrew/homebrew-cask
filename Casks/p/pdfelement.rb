cask "pdfelement" do
  version "10.2.2"
  sha256 :no_check

  url "https://download.wondershare.com/cbs_down/mac-pdfelement_full5237.dmg"
  name "Wondershare PDFelement for Mac"
  desc "Create, edit, convert and sign PDF documents"
  homepage "https://pdf.wondershare.com/"

  livecheck do
    url "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237&version=latest"
    regex(%r{<Version>(\d+(?:\.\d+)+)</Version>}i)
  end

  depends_on macos: ">= :catalina"

  app "PDFelement.app"

  uninstall quit: [
    "com.wondershare.PDFelement",
    "com.wondershare.helper_compact",
  ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wondershare.pdfelement.sfl*",
    "~/Library/Application Support/com.wondershare.PDFelement",
    "~/Library/Caches/com.wondershare.PDFelement",
    "~/Library/Caches/PDFelement",
    "~/Library/Preferences/com.wondershare.PDFelement-custom.plist",
    "~/Library/Preferences/com.wondershare.PDFelement.plist",
    "~/Library/Saved Application State/com.wondershare.PDFelement.savedState",
    "~/Library/WebKit/com.wondershare.PDFelement",
  ]
end
