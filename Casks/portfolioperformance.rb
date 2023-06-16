cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.63.1"
  sha256 arm:   "26c1b09cd8a4a55e15efec2bd91eda9f9ca7640b3e68cdd78a2f34643dcc4f1d",
         intel: "3fe8a62c9a9d4ac6ac7b96c74446e1d9de5018d78b6b44d098cd6b4d56e2e437"

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
