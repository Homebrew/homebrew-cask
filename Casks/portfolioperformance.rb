cask "portfolioperformance" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.57.1"

  if Hardware::CPU.intel?
    sha256 "bf8a99766c551792aee5ecd7f9d5c13823d89fa7e5d6fc22ea8a29edb05a2fab"
  else
    sha256 "44f08fcc2efb94301348d85d5301e03cb3c0695e9ba13064a64469bceb6a43f5"
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
