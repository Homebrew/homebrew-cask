cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.67.3"
  sha256 arm:   "d783c82172ca453aecfb61ccb3991ec2d85d10184007ba592e94d9e5735d9c4f",
         intel: "5190ada0e4ab7f6dcb352262d1837749aceb6e4b73fa36b4eb9f8ca95eda1eea"

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
