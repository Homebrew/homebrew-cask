cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.62.1"
  sha256 arm:   "4ded6da5a22f906369df00ece9fd68215bf6ac8aab71859faf4171d7ec0676b9",
         intel: "c13d753a80fb283e8492fedc95d2ca9e00b88f49d8ce4ddc6bbdc4949b3de725"

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
