cask "pdfelement-express" do
  version "1.2.1"
  sha256 :no_check

  url "https://download.wondershare.com/cbs_down/mac-pdfelement-express_full4133.dmg"
  name "PDFelement Express"
  desc "PDF editor"
  homepage "https://pdf.wondershare.com/pdfelement-express-mac.html"

  livecheck do
    url "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=4133"
    regex(/<Version>(\d+(?:\.\d+)+)</)
  end

  depends_on macos: ">= :sierra"

  app "PDFelement Express.app"
end
