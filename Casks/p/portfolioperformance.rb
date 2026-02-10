cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.81.5"
  sha256 arm:   "0cc1428d402513be692c2ee4b8714733a638fd85927111f5c12d7cf88ad1f4ef",
         intel: "a4cc4f5681d7ddb81377ac434084f707412dfc2be6bd677b3596d7e3670cb0e8"

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
  depends_on macos: ">= :big_sur"

  app "PortfolioPerformance.app"

  zap trash: [
    "~/Library/Application Support/name.abuchen.portfolio.product",
    "~/Library/Caches/name.abuchen.portfolio.distro.product",
    "~/Library/Preferences/name.abuchen.portfolio.distro.product.plist",
  ]
end
