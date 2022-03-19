cask "portfolioperformance" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.56.6"

  if Hardware::CPU.intel?
    sha256 "6fdc7fe8c0d7fb8a474a398a84528f9beb827dc96bda0e033d7116da0c328d5f"
  else
    sha256 "8fb8a79741c0085af10be2881ae5cc7ecbac6a2f28f42b52f30eabd2e2560bc3"
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
