cask "portfolioperformance" do
  version "0.51.1"
  sha256 "2b6eb9d44c7c7e7f63ca0ebaa554661f4ab5965f4b915f5fee63f6ff46408813"

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
