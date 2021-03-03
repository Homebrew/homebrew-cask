cask "portfolioperformance" do
  version "0.51.0"
  sha256 "47bd2ba1291ab98edf1fbf1957161e949fcb6811e014ba58c15f000d4f15b1ba"

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
