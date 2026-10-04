cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.88.0"
  sha256 arm:   "2977f606deb41bdf4aa2f9e4c1e520ef154630e2e81201b85b8383e5c3bcecdd",
         intel: "5813b2d07e891c1e17f34523bbe14641145ef305a2f68d3a84f885b8e34d5829"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}-#{arch}.dmg"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  livecheck do
    url "https://www.portfolio-performance.info/en/download.html"
    regex(/href=.*?PortfolioPerformance[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on :macos

  app "PortfolioPerformance.app"

  zap trash: [
    "~/Library/Application Support/name.abuchen.portfolio.product",
    "~/Library/Caches/name.abuchen.portfolio.distro.product",
    "~/Library/Preferences/name.abuchen.portfolio.distro.product.plist",
  ]
end
