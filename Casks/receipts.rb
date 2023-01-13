cask "receipts" do
  version "1.9.17-562"
  sha256 "6689159629ab2e6e2391da0e0992edd6e82d63e37f40b682c5f41cb467016bec"

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  name "Receipts"
  desc "Document management"
  homepage "https://www.receipts-app.com/"

  livecheck do
    url "https://www.receipts-app.com/updater.php"
    regex(/href=.*?Receipts[._-]v?(\d+(?:[.-]\d+)+)\.zip/i)
  end

  depends_on macos: ">= :el_capitan"

  app "Receipts.app"
end
