cask "pdfelement-express" do
  version "1.2.1"
  sha256 "dd60c96c53725e1165a951b5b8c6c82acfbf7d47b91f2ab06ed662326df7eb34"

  url "https://download.wondershare.com/cbs_down/mac-pdfelement-express_full4133.dmg"
  appcast "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=4133"
  name "PDFelement Express"
  homepage "https://pdf.wondershare.com/pdfelement-express-mac.html"

  depends_on macos: ">= :sierra"

  app "PDFelement Express.app"
end
