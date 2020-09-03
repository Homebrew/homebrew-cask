cask "portfolioperformance" do
  version "0.48.0"
  sha256 "7c08a7da2ab7d41b8d815e8c83036a9ed1a6015cd7e545cf5c193c5ac3e0a793"

  # github.com/buchen/portfolio/ was verified as official when first introduced to the cask
  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg"
  appcast "https://github.com/buchen/portfolio/releases.atom"
  name "Portfolio Performance"
  homepage "https://www.portfolio-performance.info/portfolio/"

  auto_updates true

  app "PortfolioPerformance.app"
end
