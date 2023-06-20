cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.64.0"
  sha256 arm:   "d33aa75e9ba06d6ce077419c11271187dbc8f22967aabb0587f41c1c2e470a45",
         intel: "7f70aaaac00ee7a8938f0ad2d282f409dd7df137651bd469997b3a9db5bdbcbe"

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
