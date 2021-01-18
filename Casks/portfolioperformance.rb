cask "portfolioperformance" do
  version "0.50.2"
  sha256 "8bee8ef3a1c7ea2f686732a2392f50d94e8558f3cda3584e4b620a658bed29b9"

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
