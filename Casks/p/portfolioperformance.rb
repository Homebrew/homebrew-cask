cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.79.1"
  sha256 arm:   "2d37ae15e19797d5751216f30cd745bc86ea20c1fc4b32b3fd6a3724f6fbc6ec",
         intel: "c21105237f4e79cf9880263cd42f667ef68682f8bb01a446af719e0cf26eb498"

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
