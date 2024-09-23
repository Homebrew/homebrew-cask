cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.71.1"
  sha256 arm:   "465176e61bbdc17e15cf43cccaaa31795a1b9a4f10c749f7a1bf3408ebeedee2",
         intel: "8c06515edee22dcdea252877be914c69d4ec1902700797c28153b2f0b83b2b17"

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
