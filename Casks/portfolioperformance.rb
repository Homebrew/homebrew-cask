cask "portfolioperformance" do
  version "0.54.0"
  sha256 "ddb45bf4231c40a8a8dd9f574253ded3b609dda1e74cabaad9c0d27aff108ad8"

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
