cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.78.1"
  sha256 arm:   "3c91b7629e60b0443f7f2c4839488b12b76047b7cbb45b01c59ec9812624b32c",
         intel: "0c575c7998ef0dc8b6caa4d7d35196dac4c0283b8a1dbb323aa089704797b4af"

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
