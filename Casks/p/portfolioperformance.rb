cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.81.1"
  sha256 arm:   "9b095a715b3e744a3938969d4d350edaf82d27628a97eb03041a7f29b5a53831",
         intel: "5f93f7ea424c9b3eb1538bd03c7e62c9803ff0001dc6c7b232839ba77b77fc3f"

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
