cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.70.3"
  sha256 arm:   "3530159f9694ba615bb87cd3a46067017f4d819885a030fba356d1d65980370a",
         intel: "c66bde786a11e775a706aafad1ffd3dde7ec593a8abc3008efd1cb4366892add"

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
