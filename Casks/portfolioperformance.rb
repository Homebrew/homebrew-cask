cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.64.4"
  sha256 arm:   "bdaedd7e4cf2b94332cff3dee5eabcf0ee33b6204dc096b62b07e619ee63856f",
         intel: "edb90e714888036c38cd5c566642185a8e25660d0f7bfbd291723c178398b55e"

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
