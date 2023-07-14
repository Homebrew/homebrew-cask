cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.64.2"
  sha256 arm:   "b2a230b07c85b1f1a805b234ae5bedd13d95b3855e5c0ffd610eb89e184005d1",
         intel: "c68f77a4b962aeacf11668d43e955ecdc07c02e20c6e70cd5e4e4c181411a5b2"

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
