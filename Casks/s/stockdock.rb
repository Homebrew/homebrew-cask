cask "stockdock" do
  version "1.0"
  sha256 "d6526f64bceb3eedfc6a2abf7479693b4311c022f9d3c39eeeb52e4c85fafb27"

  url "https://github.com/simonsruggi/StockDock/releases/download/v#{version}/StockDock.zip"
  name "StockDock"
  desc "Menu bar app to track stocks and portfolios in real time"
  homepage "https://github.com/simonsruggi/StockDock"

  depends_on macos: :sonoma

  app "StockDock.app"

  zap trash: [
    "~/Library/Application Support/StockDock",
    "~/Library/Caches/com.simone.stockdock",
    "~/Library/Preferences/com.simone.stockdock.plist",
  ]
end
