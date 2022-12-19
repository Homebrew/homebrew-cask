cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.60.0"
  sha256 arm:   "56488fbe94d8a0573a82529af5f1742a5051ff3989b441ae9e0fb061a7dc0f35",
         intel: "7e214107c6ffa28a4522bfdcee35f2376f72d45f947da0a2a7a1ab361c9e5933"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}-#{arch}.dmg",
      verified: "github.com/buchen/portfolio/"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true

  app "PortfolioPerformance.app"
end
