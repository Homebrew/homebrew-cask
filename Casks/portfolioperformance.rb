cask "portfolioperformance" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.58.3"

  if Hardware::CPU.intel?
    sha256 "3371afbccd7681711ba8d2c36c58a93a6335e7321d7669dc1e052ba505766293"
  else
    sha256 "97a98900582dff1cede4f082f50e0a5e55a653de9eb36335b1fdc4f0c20e074a"
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
