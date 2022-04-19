cask "portfolioperformance" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.57.2"

  if Hardware::CPU.intel?
    sha256 "413b3aa29e2ce3cdfb262426772aab7750e584bf8a5ebb21295ffbc143023c67"
  else
    sha256 "f2d7ef1ff3944b8021473b85e986d26822a6e303412bd569f0e43bf24339ec48"
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
