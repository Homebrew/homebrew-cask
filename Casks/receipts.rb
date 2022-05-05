cask "receipts" do
  version "1.9.11-380"
  sha256 "210e6056fb5541a73ffea9f0ac7ec6b905f4cd079a4e438df3340de2fb6ba605"

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
