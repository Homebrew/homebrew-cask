cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.67.1"
  sha256 arm:   "38116c176b24edd68d9a32c53a0a5f97af06aff180cf8e5fc1df7a462cb3291c",
         intel: "e21bb53508fc09b82e25b522096d3f1afa76776a51afb642d72384f39e925e8d"

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
