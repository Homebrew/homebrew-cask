cask "gosign" do
  version "2.0.9"
  sha256 :no_check

  url "https://rinnovofirma.infocert.it/gosign/download/darwin/latest"
  name "GoSign Desktop"
  desc "Digital signature and time stamp app"
  homepage "https://www.firma.infocert.it/prodotti/gosign/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  app "GoSign-Desktop.app"

  zap trash: [
    "~/Library/Application Support/GoSign Desktop",
    "~/Library/Preferences/it.infocert.desktop.gosign.plist",
    "~/Library/Saved Application State/it.infocert.desktop.gosign.savedState",
    "~/.gosign",
  ]
end
