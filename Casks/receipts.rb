cask "receipts" do
  version "1.9.9-340"
  sha256 "4d8bca2ffc4b45ae7e3deb1566ff838683bf6a9382d3533a4861d1d1e456d4c2"

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast "https://www.receipts-app.com/updater.php"
  name "Receipts"
  homepage "https://www.receipts-app.com/"

  depends_on macos: ">= :yosemite"

  app "Receipts.app"
end
