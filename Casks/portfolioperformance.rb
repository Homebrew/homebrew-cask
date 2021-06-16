cask "portfolioperformance" do
  version "0.53.1"
  sha256 "e33ccf5bf4a61b5fd5cbbbeda21c5b390aed4d24585e2effd3f245a8baf50893"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg",
      verified: "github.com/buchen/portfolio/"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  livecheck do
    url :url
    strategy :git
    regex(/^(\d+(?:\.\d+)*)$/)
  end

  auto_updates true

  app "PortfolioPerformance.app"
end
