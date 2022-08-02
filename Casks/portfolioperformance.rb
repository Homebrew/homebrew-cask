cask "portfolioperformance" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.59.0"

  if Hardware::CPU.intel?
    sha256 "30816629463882bd8520d209cd6e042df210418e1895e4bf580a880cb13f9fbd"
  else
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
