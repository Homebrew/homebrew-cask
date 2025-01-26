cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.74.0"
  sha256 arm:   "c9d55a156d22e6e173b7f27718806736306282d6c87ead7155dcc3ec33f6a524",
         intel: "d040249c8dddbd459e59f42af376f84f36b2f108487099d2fec018cb52e3a2e9"

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
