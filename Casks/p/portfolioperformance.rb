cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.68.0"
  sha256 arm:   "0b4ff4e4ead3ddc1e3f0f77555c4127985be16c116cc265ca44dc5174cc67547",
         intel: "699c87f5cbfe91922739d94889da170808ac466b5652fbb22dd6b38e9e233d77"

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
