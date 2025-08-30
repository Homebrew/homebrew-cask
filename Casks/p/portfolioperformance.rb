cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.79.0"
  sha256 arm:   "7490ddd46fc04daae1b6e80c655c69dd2973953e62882cf196e1e2eea85e58e4",
         intel: "768d96435c99d51e1566a1fc25a040d82b679be29f945413e75333e1c61d9922"

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
