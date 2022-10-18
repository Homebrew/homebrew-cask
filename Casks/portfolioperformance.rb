cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.59.2"
  sha256 arm:   "188e28f33e501c73706e656b88e7412d2a8998504b260eb893915d46d26d80a7",
         intel: "c678b50860be1bec1feb16d3aed6362141da184060f642266a35d83ff2e5fa96"

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
