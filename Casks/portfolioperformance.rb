cask "portfolioperformance" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.56.5"

  if Hardware::CPU.intel?
    sha256 "cedcdf9ef7f43daa97b4e7730de73f0b1bbeb11e8cf33c8ba339e37ebbd96f84"
  else
    sha256 "17db808c063be9855522779f259205adf8b45ecfd99c3727f366189118ce7be2"
  end

  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}-#{arch}.dmg",
      verified: "github.com/buchen/portfolio/"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end

  auto_updates true

  app "PortfolioPerformance.app"
end
