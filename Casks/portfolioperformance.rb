cask "portfolioperformance" do
  version "0.54.3"
  sha256 "1e9171c4c88d59cc25d21c9eed69794552eaf4eb9a3569040a951cb460c8dbba"

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
