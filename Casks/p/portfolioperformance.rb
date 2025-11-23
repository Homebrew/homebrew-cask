cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.80.4"
  sha256 arm:   "d20835100c75aa9adea37308ddad6c8ca1c457ea685ce41c69198fb0ec60332b",
         intel: "905304293fe47cade751fb53de7131d8026fe4347c1234cb80bfef82fd149380"

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
