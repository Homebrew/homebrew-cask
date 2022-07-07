cask "portfolioperformance" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.58.5"

  if Hardware::CPU.intel?
    sha256 "7afcf97ec3e3153d943f39a6093e841553f24950a246a5af1268594731022d3e"
  else
    sha256 "6b6f2cc5d4ffed52c0507807e1024bea1028e1d8f827928a7be9f3626f7da566"
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
