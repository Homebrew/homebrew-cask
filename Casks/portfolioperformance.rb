cask 'portfolioperformance' do
  version '0.46.3'
  sha256 '801e09c87f27fd95e8854752438130db07f3d23e4745f0e1cee4b886df65213b'

  # github.com/buchen/portfolio/ was verified as official when first introduced to the cask
  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg"
  appcast 'https://github.com/buchen/portfolio/releases.atom'
  name 'Portfolio Performance'
  homepage 'https://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'
end
