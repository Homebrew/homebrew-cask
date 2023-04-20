cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.62.0"
  sha256 arm:   "b28a54c5a5c9fa137cb31cd16f7e8fa82960e9ccbc15d0fc500bf140355d2e4d",
         intel: "45730f2b1de71b98827a6a80adc76d71cc31d254c028aa5f670af0a10aa45781"

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
