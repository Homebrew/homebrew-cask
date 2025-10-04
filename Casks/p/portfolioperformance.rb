cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.80.3"
  sha256 arm:   "340395104b2916e5c416208131ef990f590281af1f320b8ea3b75d29052e5c0a",
         intel: "ecf28c72b76e2cc7d5807e334f3305cea4d4ad7da725a75c167f975e2057767e"

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
  depends_on macos: ">= :big_sur"

  app "PortfolioPerformance.app"

  zap trash: [
    "~/Library/Application Support/name.abuchen.portfolio.product",
    "~/Library/Caches/name.abuchen.portfolio.distro.product",
    "~/Library/Preferences/name.abuchen.portfolio.distro.product.plist",
  ]
end
