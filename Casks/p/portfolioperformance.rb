cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.77.1"
  sha256 arm:   "342931c7f7aab365e95ca9833aea20fb82fead61c83205cd9c1d0258bf3f6047",
         intel: "8c89f23738692a9548bfd89ad0391e63002e5856ace882ef65605477164fbfbb"

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
