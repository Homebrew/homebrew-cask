cask "portfolioperformance" do
  version "0.53.2"
  sha256 "6bea970e6bf0151931422920e41a2411235c357a45a08b814d5aa6679ff693b0"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg",
      verified: "github.com/buchen/portfolio/"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end

  auto_updates true

  app "PortfolioPerformance.app"
end
