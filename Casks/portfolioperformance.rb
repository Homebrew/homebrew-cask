cask "portfolioperformance" do
  version "0.50.1"
  sha256 "0759495690665e76444b313ebfa326b7751b0dfd76c303ad0691f41fdeb0e30a"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg",
      verified: "github.com/buchen/portfolio/"
  appcast "https://github.com/buchen/portfolio/releases.atom"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  auto_updates true

  app "PortfolioPerformance.app"
end
