cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.77.0"
  sha256 arm:   "f4dabecd8e67e0b672eb5d755b74f520c5e847a7e3f392234e99f0d464eab723",
         intel: "34fea62849fadeb031883c04a18395af49677706abe4eb2e2b19efff37209d81"

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
