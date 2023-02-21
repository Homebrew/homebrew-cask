cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.61.0"
  sha256 arm:   "c9ce8466a250c9c3eed4e4ff9f64799ab08b40e1cd6615ceeede41ca654882bf",
         intel: "d75dd22b25a9d2e9bed851527be4e4cb9f90419b8b26a9f3983e9b370f9eb099"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}-#{arch}.dmg",
      verified: "github.com/buchen/portfolio/"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true

  app "PortfolioPerformance.app"

  zap trash: [
    "~/Library/Application Support/name.abuchen.portfolio.product",
    "~/Library/Caches/name.abuchen.portfolio.distro.product",
    "~/Library/Preferences/name.abuchen.portfolio.distro.product.plist",
  ]
end
