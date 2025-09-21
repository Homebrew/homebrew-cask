cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.80.0"
  sha256 arm:   "be7cbecff0bf160e678709371d63b0d085a2cda27aeb920dc8d340ab154f1077",
         intel: "69912afd61e4380ba1aaf516f1432dc45fc6c8a05c2f4db8ce10057782f11819"

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
