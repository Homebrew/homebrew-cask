cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.68.4"
  sha256 arm:   "cf9bce89988ce9f36626a0ac35553a9b27ff2af4f8bd59b41cb4bd1cf9b68cad",
         intel: "e43a37f5c70803e0d91989d110914ead98164f9f2587fc6cad547d19fc9513f2"

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
