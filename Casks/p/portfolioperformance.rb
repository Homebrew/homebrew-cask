cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.65.4"
  sha256 arm:   "85b23a5d713be547d7fe1aa0cab4c792d40f3d8564482e99e6bf3cd06393fee9",
         intel: "d7ac6273230f84218d211d24e7d064265b1216413134f29404aa441ed06173ab"

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
