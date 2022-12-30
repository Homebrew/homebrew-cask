cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.60.1"
  sha256 arm:   "413b26a12f424770d5f97d751fafc924467183c483104f5c0b7dadc7f13ed1c1",
         intel: "be6a9ad2076799402b6811e9abdd4b1002ea6fc5e6f0575e6394a5118005d234"

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
