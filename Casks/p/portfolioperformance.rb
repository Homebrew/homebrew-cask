cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.81.2"
  sha256 arm:   "56e284ac318dbbac5340499a07a8d14f2fb6037f69cf98f54b725a6b8c32a1ab",
         intel: "403603d5041003de13a37965d6cfa8cf820665b20b26da54646f3d4753874e8d"

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
