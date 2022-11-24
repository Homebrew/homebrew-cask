cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.59.4"
  sha256 arm:   "31a13f0c9b9acb53a92e6c802a08d249208944ed9ec16c153667a192caa1cb4d",
         intel: "6843f29ebf2c141c6063955014d6759ad17b366844352de19e345b60d59ccd9f"

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}-#{arch}.dmg",
      verified: "github.com/buchen/portfolio/"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true

  app "PortfolioPerformance.app"
end
