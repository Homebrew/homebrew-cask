cask "pdfelement" do
  version "11.4.22"
  sha256 :no_check

  url "https://download.wondershare.com/cbs_down/mac-pdfelement_full5237.dmg"
  name "Wondershare PDFelement for Mac"
  desc "Create, edit, convert and sign PDF documents"
  homepage "https://pdf.wondershare.com/"

  livecheck do
    url "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237&version=latest"
    strategy :xml do |xml|
      xml.get_elements("//Version").map { |item| item.text&.strip }
    end
  end

  depends_on macos: ">= :catalina"

  app "PDFelement.app"

  uninstall quit: [
    "com.wondershare.helper_compact",
    "com.wondershare.PDFelement",
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
