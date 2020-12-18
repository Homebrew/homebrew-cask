cask "portfolioperformance" do
  version "0.49.4"

  if MacOS.version <= :catalina
    sha256 "22f8e8c18a755b9a2ae06a22b3a8b30e3fe1cd14b41cbcdd4119bf45e6cc5225"

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
