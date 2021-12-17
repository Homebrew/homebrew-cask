cask "portfolioperformance" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.56.2"

  if Hardware::CPU.intel?
    sha256 "5d0f4e4289a1d84cac53e710026af6e370fd17bd5184ff9c663c7a24c93f94dd"
  else
    sha256 "7fdc377deac9adaeddaaad7f29d96119d00f21577b4c403c7a45324959d4b7c6"
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
