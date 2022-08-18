cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.59.0"

  on_intel do
    sha256 "30816629463882bd8520d209cd6e042df210418e1895e4bf580a880cb13f9fbd"
  end
  on_arm do
    sha256 "6b3a3747e37cc46f089a2e3cfaa423c153817f083e43821d1ed4f9e7efc37d86"
  end

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
