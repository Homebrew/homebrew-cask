cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.70.4"
  sha256 arm:   "c0e5e788b3e9a354e1fb2505b49def61942d72280d866e7727a139a5d731b50e",
         intel: "08c18a4243bc9a938572371f15f858f5332ad245b2e88bfb1f62015f1f3a5552"

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
