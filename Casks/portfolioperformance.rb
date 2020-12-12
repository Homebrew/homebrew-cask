cask "portfolioperformance" do
  version "0.49.3"
  sha256 "e7ff90326aacd29d20cc41b47a641abc7577708867e2ae90fcfd905f5aecac16"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg",
      verified: "github.com/buchen/portfolio/"
  appcast "https://github.com/buchen/portfolio/releases.atom"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  auto_updates true

  app "PortfolioPerformance.app"
end
