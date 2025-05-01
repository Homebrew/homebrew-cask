cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.76.0"
  sha256 arm:   "765187cf27c0b4b920d420638d98eca482efa0dd0ff6c101c5d1cb2c1d72b0e2",
         intel: "3441ca45fb7d1a05b482a855d69a2b7a3f7caeaf738fb0bbff74988eec9e39b3"

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
