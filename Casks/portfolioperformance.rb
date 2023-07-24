cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.64.5"
  sha256 arm:   "992140abbfa1e6c6fbb81aee1e6095015d8c4d2a97c3dbbd061c280e83f65aae",
         intel: "b95ce9da1bdf3a1bdbb38e008aaca046fd7745b18b1111d8e1863e67783cc32a"

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
