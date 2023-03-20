cask "receipts" do
  version "1.9.18-584"
  sha256 "9c04f704fc40743491c09d3b4f3e94abf9dcf9235c71b918c31b35024ac04f97"

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
