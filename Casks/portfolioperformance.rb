cask "portfolioperformance" do
  version "0.49.0"
  sha256 "5d1565f5c94730485cc7e1d81eab670c77cdd393235c2b993d95686debd8f3a4"

  # github.com/buchen/portfolio/ was verified as official when first introduced to the cask
  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg"
  appcast "https://github.com/buchen/portfolio/releases.atom"
  name "Portfolio Performance"
  homepage "https://www.portfolio-performance.info/portfolio/"

  auto_updates true

  app "PortfolioPerformance.app"
end
