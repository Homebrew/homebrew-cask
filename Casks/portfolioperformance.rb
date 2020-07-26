cask 'portfolioperformance' do
  version '0.47.0'
  sha256 'd3fb7ccd695659a38b388e584e1f4c3944c85e8b49ec0e7117c3a0bc9ea6e854'

  # github.com/buchen/portfolio/ was verified as official when first introduced to the cask
  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg"
  appcast 'https://github.com/buchen/portfolio/releases.atom'
  name 'Portfolio Performance'
  homepage 'https://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'
end
