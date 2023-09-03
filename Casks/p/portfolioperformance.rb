cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.65.2"
  sha256 arm:   "c09714f43cd8d3bf6f96246fd5e275caed470e5c16f9c9a887c4380648043eab",
         intel: "c6b89cf58a4918bc22a3e36f48d02fc41238c5d52dbf0bfa30406bc32f1401b5"

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
