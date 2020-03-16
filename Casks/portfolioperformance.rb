cask 'portfolioperformance' do
  version '0.45.0'
  sha256 '528b7644c32c628bb8b4e9c01edf7043ba8472bb8ff2d8abe87442c3d0a9e004'

  # github.com/buchen/portfolio was verified as official when first introduced to the cask
  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg"
  appcast 'https://github.com/buchen/portfolio/releases.atom'
  name 'Portfolio Performance'
  homepage 'https://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'
end
