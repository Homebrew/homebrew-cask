cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.59.3"
  sha256 arm:   "1047aee9c15fe5a49c19071a7d8c93751ac9ce8ea49f77fc1bd48c37c5dae45f",
         intel: "7de8906e71e8548222bb8bce7f7585ed3ad89c90462a37aa91101a2b0e94c96f"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}-#{arch}.dmg",
      verified: "github.com/buchen/portfolio/"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true

  app "PortfolioPerformance.app"
end
