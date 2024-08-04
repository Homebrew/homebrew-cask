cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.70.0"
  sha256 arm:   "444242db89fb0d132d99d19a632ec42d1dba5c80883cfe8ec2c67b3a9a56273e",
         intel: "fb0867b4e1dfe14f643705f03dc0fe991938d8e8bdedbbe6c8f69ac95d117f69"

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
