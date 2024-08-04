cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.70.2"
  sha256 arm:   "60a617935721059196ba852210421dc692a3cdcee9cc960de338b8408d876122",
         intel: "edaf22eff6d172a8d1375723e94c473510d331bddcb80a8d11f696e15b8b8af8"

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
