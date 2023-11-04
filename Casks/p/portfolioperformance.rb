cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.65.5"
  sha256 arm:   "3664422d7909f10415f1f9c69fd89e698b7813a7488d8defc87ed5e6efdec18c",
         intel: "a918ea650eacd001dbbe38b2ed50c8938650102b03e09a14d1193251fea27ef3"

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
