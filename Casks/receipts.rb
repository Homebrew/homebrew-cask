cask "receipts" do
  version "1.9.16-544"
  sha256 "a67c66bcca520ef71a88e652bf3058c016b9741e5d8e844e575decd27e14ee5c"

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
