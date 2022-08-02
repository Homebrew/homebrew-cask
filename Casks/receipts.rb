cask "receipts" do
  version "1.9.15-520"
  sha256 "d788e1badb501bd8c0cca255f43ddb39d655002b72917d7d5ee9ba139897d8e5"

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
