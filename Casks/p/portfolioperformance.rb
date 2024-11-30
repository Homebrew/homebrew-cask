cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.72.0"
  sha256 arm:   "dcbfac00b5d924ae6ca4911bb345382112d19e2cbdc63d1b9d77cce17173373a",
         intel: "b79a478f7e057c289d861fc7115297933392ea5ee59fafbc00acbabbf6a2088a"

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
