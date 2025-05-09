cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.76.2"
  sha256 arm:   "14addb57938f22f14ce0b314a76fdec90613d0e8f4a1175638bd68df8112cb9d",
         intel: "d6bdc51f88c7e2b1bbcb68129c16b7abad0faebf05f64cad40ed3fde232a9473"

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
