cask "portfolioperformance" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.58.4"

  if Hardware::CPU.intel?
    sha256 "62b6f49a894fd1653f6d032c885dfefc5abf39fdd8f6a9e89d4c6efd9345314d"
  else
    sha256 "15f7ba8879e64fdf868ddf81efd648ebccae254698c1c0ee88eab525cf0c15d8"
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
