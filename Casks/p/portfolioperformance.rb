cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.72.1"
  sha256 arm:   "5283a8fa6111b61b49dd06c01fa11b32fef2ef4956360bcc0c8cb392bf3d0f46",
         intel: "7faced8b2614ef07f4dda6fd16c65cfff39e4f1e7733ebe57d3c352f2defbab1"

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
