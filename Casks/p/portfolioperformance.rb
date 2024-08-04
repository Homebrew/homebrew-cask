cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.70.1"
  sha256 arm:   "6f564c9d434d85547a65f7a1dce3d86fe5dc871c7e70fc829516980c3f974ae5",
         intel: "7ff7302ef00651cf3c5e360097877f85f0e2e55edcc262ebd6dd7c19a3777363"

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
