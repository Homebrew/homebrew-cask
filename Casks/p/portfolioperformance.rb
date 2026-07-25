cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.86.0"
  sha256 arm:   "ada742fda4be39ba06a126cd8216aa67f3a22eeb616da8303d6b42edd6d3c0a7",
         intel: "9ade0589b93e36d1f41e379f3f4658333bcfc31150284d092a502ef19b6b1382"

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
