cask "portfolioperformance" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.56.1"

  if Hardware::CPU.intel?
    sha256 "1bdb09c93d3514994aebd3a78a91360ff8ec36367eb335a9ba68f495e402e159"
  else
    sha256 "146b9f3620b0d85000f2aaad02b626ad1dc11badb4f288bfd359ca01035b7534"
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
