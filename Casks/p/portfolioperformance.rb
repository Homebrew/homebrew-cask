cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.65.0"
  sha256 arm:   "572a98e11d6f9eb54d59c623ac7d201ed77f9aa899236a1b3d1ed2d073543762",
         intel: "0f06f72e913f55464971ba7b141df21cd2e74b6119dc159d355c1c35849ec13f"

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
