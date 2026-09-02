cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.87.0"
  sha256 arm:   "1ed3bdf3ee5b0c828a0da606df05fa1509668b41176683347ddd7d64a2078fa3",
         intel: "f0a744e2ac139bc00b7af2bde75db55999acced00c6891775e45e0a625f2008f"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}-#{arch}.dmg"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  livecheck do
    url "https://www.portfolio-performance.info/en/download.html"
    regex(/href=.*?PortfolioPerformance[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: :big_sur

  app "PortfolioPerformance.app"

  zap trash: [
    "~/Library/Application Support/name.abuchen.portfolio.product",
    "~/Library/Caches/name.abuchen.portfolio.distro.product",
    "~/Library/Preferences/name.abuchen.portfolio.distro.product.plist",
  ]
end
