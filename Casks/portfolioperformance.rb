cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.61.3"
  sha256 arm:   "836e070386e3c587bc57996c80af8d9a6d63bd44961627e379c6969d7b21c877",
         intel: "1d2048cf977321b01ac47eb4515f63ccd320b6d4a29229d48c1a42fe99070939"

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
