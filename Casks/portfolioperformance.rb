cask "portfolioperformance" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.59.1"

  on_intel do
    sha256 "5bd97c6742036dd5d13dd4badd51672720e470f7f657d8069b4a7da1fda62ba3"
  end
  on_arm do
    sha256 "a100a3601af46c2e7e79f0dc129fce4da7ebf0cc594d795ac17a4aaa418941a9"
  end

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
