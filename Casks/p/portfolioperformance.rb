cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.69.0"
  sha256 arm:   "cf78650354a47396dbd96ea3bb2a47fcc99f53addb5210028e79c33894e58553",
         intel: "0fd6b1b08e3e64989262b27e95979d15a0c508461886884522dd020b16168e76"

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
