cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.64.1"
  sha256 arm:   "5ed7a4823caf46e56e0e911f3b777f88946f12689b1adf76623efb3dc9d379da",
         intel: "ab8e32de88d4da41febc1dee6f738043d6af6bfb1de653faf37b4c7754cff555"

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
