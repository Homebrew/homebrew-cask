cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.86.1"
  sha256 arm:   "3b7e627d3fd21fc7536296591dabae19efafa81190295f4f691cebdb7283014b",
         intel: "320548fe202c09b30e7e9f6b9385d44e8ed04eafe4c4c84c835790271a2f42b5"

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
