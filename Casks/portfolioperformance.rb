cask 'portfolioperformance' do
  version '0.45.1'
  sha256 '48e15ff5f8b706514fdb32e7a2b72fe1478bf3cdc1e517eb5256d04e4ae68855'

  # github.com/buchen/portfolio was verified as official when first introduced to the cask
  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg"
  appcast 'https://github.com/buchen/portfolio/releases.atom'
  name 'Portfolio Performance'
  homepage 'https://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'
end
