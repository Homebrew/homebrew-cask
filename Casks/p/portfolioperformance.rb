cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.65.1"
  sha256 arm:   "08643cfbb3f06037ce15b3a0d445b2d0a87adcb820876b98d6446d6ca33e994d",
         intel: "e59a8bf18a0685a986ccbb2e53a3b47aab40f1bf89e631bf7af35b70a7ee0419"

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
