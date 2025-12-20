cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.81.0"
  sha256 arm:   "5f79a40678a73d0a22cd3d4cf4b9a5880f248467223bc0a5cb2843a6ffcc3ed3",
         intel: "fd30838be7eeee13400161fd1f0dd4255a7d23008702ec99d9b7e28014e3144e"

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
