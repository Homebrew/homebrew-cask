cask "portfolioperformance" do
  version "0.50.4"
  sha256 "a1b4bf1628ef20494b67f8cb4654783a9fadf1a2fdc6ff6052041793da201776"

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
