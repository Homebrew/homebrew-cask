cask "receipts" do
  version "1.9.10-360"
  sha256 "e1895c47301107edb505d458a2d8a07503757b374c687576c583744e85dc0ce4"

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast "https://www.receipts-app.com/updater.php"
  name "Receipts"
  homepage "https://www.receipts-app.com/"

  depends_on macos: ">= :yosemite"

  app "Receipts.app"
end
