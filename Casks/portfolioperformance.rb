cask "portfolioperformance" do
  version "0.54.2"
  sha256 "008d093e9e04045b51aa02aafef9e50b5fcc569d2332952fb3e998681a1bb4ae"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg",
      verified: "github.com/buchen/portfolio/"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end

  auto_updates true

  app "PortfolioPerformance.app"
end
