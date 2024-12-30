cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.73.0"
  sha256 arm:   "1fd644d578a556ebe9d4044551f06e6d20ecc9370da1d48414dacb3a473e6d9c",
         intel: "469a43c7fd13c2ce36530234b60c0661c959dd1aa0fc94a25473e26cdaa108d5"

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
