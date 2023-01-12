cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.60.2"
  sha256 arm:   "52f52c55e8e768c55d70e740a95911fe9fbe7ba1b1e9781ba2bab87c082cded0",
         intel: "f11d5b36649738cbddfe4213622da8204f9545fef0ff5fc1310ede30b0503fba"

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
