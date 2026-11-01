cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.90.0"
  sha256 arm:   "57fcb2c1e6223f2ef38372d51f9e5a42e745f970a395bcd28b68701d66e67e7a",
         intel: "410056fb500c139117d26d0a3984ee6a0e0a97391ca58fb01414a69e23b09c28"

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
