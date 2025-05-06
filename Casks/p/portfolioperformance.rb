cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.76.1"
  sha256 arm:   "06a56084d2d84b25648d2f149228273bf35a4b652932dc2ce34f9f51a1ac9bea",
         intel: "2899ae535f1d3902dcb015f2c657944988fb8ac207c4544a6f0b3d00f118b3e2"

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
