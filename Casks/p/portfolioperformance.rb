cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.68.2"
  sha256 arm:   "e42cc2c7fdacd96fd6ffbfbb5b0b28addf075c324114fbd41fcf79d9018fb386",
         intel: "c47f854caf796694fdc5a580b5d8cf141d49231728d1defe62c721317f98c3cd"

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
