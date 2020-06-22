cask 'portfolioperformance' do
  version '0.46.4'
  sha256 '00453b270a5604d4ff86fc63acfd4f0d7169bc128176c9f24cfcc6f5df5c0133'

  # github.com/buchen/portfolio/ was verified as official when first introduced to the cask
  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg"
  appcast 'https://github.com/buchen/portfolio/releases.atom'
  name 'Portfolio Performance'
  homepage 'https://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'
end
