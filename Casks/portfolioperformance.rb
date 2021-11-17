cask "portfolioperformance" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.56.0"

  if Hardware::CPU.intel?
    sha256 "171b72c885c3ccd29992bc79638d2a97c6eb39b6cfdb5511bd50383f26ccaea7"
  else
    sha256 "82ffe92a1d92d7596d7bb9f1e12209f0d78d651ce040bd889a1b98dbb02aec2f"
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
