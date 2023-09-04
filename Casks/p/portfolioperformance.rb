cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.65.3"
  sha256 arm:   "590e7fb220b8395f889a0ab2f923a8cb6c8961b6583c04246ac90e0fd6d9c69f",
         intel: "dd6124cce2813ce452346ead0a0aa05a768224728caff4e64067b5a40ca568cb"

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
