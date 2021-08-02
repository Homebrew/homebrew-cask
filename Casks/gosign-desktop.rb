cask "gosign-desktop" do
  version :latest
  sha256 :no_check

  url "https://rinnovofirma.infocert.it/gosign/download/darwin/latest"
  name "GoSign Desktop"
  desc "Firma digitale Italia"
  homepage "https://www.firma.infocert.it/prodotti/gosign.php"

  depends_on macos: ">= :high_sierra"

  app "GoSign-Desktop.app"
end
