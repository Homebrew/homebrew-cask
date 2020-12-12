cask "pdfelement" do
  version "7.6.7,3180"
  sha256 :no_check

  url "https://download.wondershare.com/cbs_down/mac-pdfelement_full5237.dmg"
  appcast "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=5237"
  name "Wondershare PDFelement for Mac"
  desc "Create, edit, convert, and sign PDF documents"
  homepage "https://pdf.wondershare.com/"

  depends_on macos: ">= :sierra"

  app "PDFelement.app"
end
