cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.61.1"
  sha256 arm:   "91b2acce550cafca27d8d370f89a8d587403219b1af7b2aab3427c2129bad1b6",
         intel: "bfa8b2770d6c76452e850d4fae0e4598c582b7ba10d3e0a896dd1bc2d4f0583d"

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
