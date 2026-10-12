cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.89.0"
  sha256 arm:   "53dc9f1b16e59f39a6aaaff4c46bf05ca3b490ae4419365dfa2d321e62e44d71",
         intel: "ee97ed9e66ab32d4ea8473059faf6d53e66046657a7ee89acf418d6c638c5030"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}-#{arch}.dmg"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  livecheck do
    url "https://www.portfolio-performance.info/en/download.html"
    regex(/href=.*?PortfolioPerformance[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on :macos

  app "PortfolioPerformance.app"

  zap trash: [
    "~/Library/Application Support/name.abuchen.portfolio.product",
    "~/Library/Caches/name.abuchen.portfolio.distro.product",
    "~/Library/Preferences/name.abuchen.portfolio.distro.product.plist",
  ]
end
