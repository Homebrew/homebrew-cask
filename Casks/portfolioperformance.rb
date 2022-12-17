cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.59.5"
  sha256 arm:   "1ef02d552f3dd3456a64190698d10619f13729a17ddff9b68f737c70cead7da9",
         intel: "46762af0f3c9a6e3c7b6fef59187f9137940bd5268c0d55ebe46173f7cd59e03"

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
