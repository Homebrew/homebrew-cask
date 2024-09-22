cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.71.0"
  sha256 arm:   "8476bdb6c1392cca2d26f2cedc462841ff56f3539a3f9971e93d258ba7fa5ad1",
         intel: "bcc406f4bde878c4454c2a758ce8b524c21c455d16d16a29b30ef88465af3d5f"

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
