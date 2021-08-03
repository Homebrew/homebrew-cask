cask "gosign" do
  version "1.1.6"
  sha256 :no_check

  url "https://rinnovofirma.infocert.it/gosign/download/darwin/latest"
  name "GoSign Desktop"
  desc "Digital signature and time stamp app"
  homepage "https://www.firma.infocert.it/prodotti/gosign.php"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  app "GoSign-Desktop.app"
end
