cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.66.1"
  sha256 arm:   "656965a5b70a03f9aeed3384bb135cbdae3c2cb1dc11f46450cfa200061ecdd8",
         intel: "cfb30159e8e2ad8fd155b0706f3f4bde535b306a9f9e38c7aa4c3a3b45acd982"

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
