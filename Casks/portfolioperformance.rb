cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.61.4"
  sha256 arm:   "83efb52535cdc65d4c2576938b77b9a07fd0dd6faad521d57b3fb5dc6404bc22",
         intel: "2fe43aee1d7d3a8afd93e9ca07d08f313a721342844c6bf1cd274f7581088ae8"

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
