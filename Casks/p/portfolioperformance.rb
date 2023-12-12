cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.66.0"
  sha256 arm:   "0f821b2b779bb581f768b29666569cd2ff099472545824a8fa3e77b4cb1e36c5",
         intel: "eedbf247e5bdb821f5e900b874143cd808aa290b88aca30f74c1d32d81faa944"

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
