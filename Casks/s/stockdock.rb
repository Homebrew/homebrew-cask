cask "stockdock" do
  version "1.0"
  sha256 "37ef0bdb5b02501e538fc833ad84a55c5af7c866d190db2e0c4cbd05b65b9081"

  url "https://github.com/simonsruggi/StockDock/releases/download/v#{version}/StockDock.zip",
      verified: "github.com/simonsruggi/StockDock/"
  name "StockDock"
  desc "Menu bar app to track stocks and portfolios in real time"
  homepage "https://github.com/simonsruggi/StockDock"

  depends_on macos: ">= :sonoma"

  app "StockDock.app"

  zap trash: [
    "~/Library/Application Support/StockDock",
    "~/Library/Caches/com.simone.stockdock",
    "~/Library/Preferences/com.simone.stockdock.plist",
  ]
end
