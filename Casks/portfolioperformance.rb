cask "portfolioperformance" do
  version "0.50.0"

  if MacOS.version <= :catalina
    sha256 "bbaf1feb4de2a92523495b0b7e7537016087f3051015aa646fe033eb95083b8b"

    url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg",
        verified: "github.com/buchen/portfolio/"
  else
    sha256 "3c3b3da036bbb44d316f8c3d39383dd339da3c8a2797d1ed1d745646c5db6b42"

    url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.bigsur.dmg",
        verified: "github.com/buchen/portfolio/"
  end

  appcast "https://github.com/buchen/portfolio/releases.atom"
  name "Portfolio Performance"
  desc "Calculate the overall performance of an investment portfolio"
  homepage "https://www.portfolio-performance.info/en/"

  auto_updates true

  app "PortfolioPerformance.app"
end
