cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.64.3"
  sha256 arm:   "a4ef230334db44813640b55839bf5232d1d90d566ec9d3832b6ed357203c910a",
         intel: "e7171ada783c6467da5872b24db5d8baec5c9df79b32e87154223217f2448b80"

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
