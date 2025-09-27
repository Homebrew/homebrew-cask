cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.80.2"
  sha256 arm:   "4f7d187c668bf44b6cbab0a1a052705b7eb9d89a5a66ba0ede9b6f7407dba447",
         intel: "55eb5ff45d7f0075b07c704069abad7a389b65357a092ae803a0b636e19bc459"

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
  depends_on macos: ">= :big_sur"

  app "PortfolioPerformance.app"

  zap trash: [
    "~/Library/Application Support/name.abuchen.portfolio.product",
    "~/Library/Caches/name.abuchen.portfolio.distro.product",
    "~/Library/Preferences/name.abuchen.portfolio.distro.product.plist",
  ]
end
