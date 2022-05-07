cask "receipts" do
  version "1.9.14-502"
  sha256 "9f80781be8fa904d66b6e026fe577b740ded2c39d31012587d53f979e849aa34"

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  name "Receipts"
  homepage "https://www.receipts-app.com/"

  livecheck do
    url "https://www.receipts-app.com/updater.php"
    regex(%r{href=.*?/Receipts-(\d+(?:\.\d+)*-\d+)\.zip}i)
  end

  depends_on macos: ">= :yosemite"

  app "Receipts.app"
end
