cask "portfolioperformance" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.56.4"

  if Hardware::CPU.intel?
    sha256 "513fcabf48500833d40db53b0d76d6763cf3206b60c836efe85c6ad5aac71aeb"
  else
    sha256 "b49a50b0e89f71828f5ca6287e7b354600b3cbadd208b3f4ed5510bcb27ff663"
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
