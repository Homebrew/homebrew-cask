cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.67.2"
  sha256 arm:   "699f383d977eca6c135f90524c8c4063eb2bac90a671d5e260361d60f5a22407",
         intel: "248be819651e115da6aab6a1fb19d40f0e4867f15b87ae665e61bc90508b31e1"

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
