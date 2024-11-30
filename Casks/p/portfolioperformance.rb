cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.72.2"
  sha256 arm:   "69301846fe9516b818f34ee5e0cc873e11b3e8a4844f15b6db78ad97adf3de9f",
         intel: "6511b6ba16d56b858038f0c329a0f6cc56d4b4bacbb3f4c73eb3e5e74ea5995a"

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
