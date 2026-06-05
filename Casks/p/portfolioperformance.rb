cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.84.0"
  sha256 arm:   "04bce9b838406e8fb888fad36f042bf4b1265069bc0c0bc13b1f36e434d8acf1",
         intel: "cb89f9518ec1e5a2e1d894e03444068612cb321c703cd57b2f989480c76d2479"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}-#{arch}.dmg",
      verified: "github.com/buchen/portfolio/"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  livecheck do
    url "https://www.portfolio-performance.info/en/download.html"
    regex(/href=.*?PortfolioPerformance[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: :big_sur

  app "PortfolioPerformance.app"

  zap trash: [
    "~/Library/Application Support/name.abuchen.portfolio.product",
    "~/Library/Caches/name.abuchen.portfolio.distro.product",
    "~/Library/Preferences/name.abuchen.portfolio.distro.product.plist",
  ]
end
