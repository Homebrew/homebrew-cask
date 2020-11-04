cask "portfolioperformance" do
  version "0.49.1"
  sha256 "9136397319026365393d5b2ac2ec0249cbe71ffc3929b259d6be281b616324fd"

  # github.com/buchen/portfolio/ was verified as official when first introduced to the cask
  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg"
  appcast "https://github.com/buchen/portfolio/releases.atom"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  auto_updates true

  app "PortfolioPerformance.app"
end
