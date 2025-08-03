cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.78.0"
  sha256 arm:   "1b6762dbb51be615c36f8b19a31fc27391d60318753e9351c21ad8ed1a619288",
         intel: "7dee288384ba12f499cf97bb6a320314a075d6a062a23c3bcd2fd79ee9314bd2"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}-#{arch}.dmg",
      verified: "github.com/buchen/portfolio/"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "PortfolioPerformance.app"

  zap trash: [
    "~/Library/Application Support/name.abuchen.portfolio.product",
    "~/Library/Caches/name.abuchen.portfolio.distro.product",
    "~/Library/Preferences/name.abuchen.portfolio.distro.product.plist",
  ]
end
