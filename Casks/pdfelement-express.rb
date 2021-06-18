cask "pdfelement-express" do
  version "1.2.1,1441"
  sha256 :no_check

  url "https://download.wondershare.com/cbs_down/mac-pdfelement-express_full4133.dmg"
  appcast "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=4133"
  name "PDFelement Express"
  homepage "https://pdf.wondershare.com/pdfelement-express-mac.html"

  depends_on macos: ">= :sierra"

  app "PDFelement Express.app"
end
