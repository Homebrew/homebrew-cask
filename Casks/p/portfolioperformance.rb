cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.65.6"
  sha256 arm:   "17f4ef66d43e11bb7ad9730b72d2d77a7c2056d31320962b9cd539c4176ae114",
         intel: "6335778118e3987aee1650a33b8de70eca55e17405cf2664560568e885adfdfb"

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
