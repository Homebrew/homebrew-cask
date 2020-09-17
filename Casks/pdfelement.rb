cask "pdfelement" do
  version "7.6.6"
  sha256 "8ab259e7c7aef2f291b4d1c04b064fd1fdd663542227ac19cb5619c47ff23b6e"

  url "https://download.wondershare.com/cbs_down/mac-pdfelement_full5237.dmg"
  appcast "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237"
  name "Wondershare PDFelement for Mac"
  desc "Create, edit, convert, and sign PDF documents"
  homepage "https://pdf.wondershare.com/"

  depends_on macos: ">= :sierra"

  app "PDFelement.app"
end
