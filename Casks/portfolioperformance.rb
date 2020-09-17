cask "portfolioperformance" do
  version "0.48.1"
  sha256 "26f8f3f05c0ce6d49e39548b72fc72bbd571cc88f21747a9935debc0c97f5cce"

  # github.com/buchen/portfolio/ was verified as official when first introduced to the cask
  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg"
  appcast "https://github.com/buchen/portfolio/releases.atom"
  name "Portfolio Performance"
  homepage "https://www.portfolio-performance.info/portfolio/"

  auto_updates true

  app "PortfolioPerformance.app"
end
