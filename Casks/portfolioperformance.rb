cask 'portfolioperformance' do
  version '0.46.0'
  sha256 '1e52b885ff3e1f0c796c6bcdd0783945de002115fd0f065a0e81be0d755d7a7f'

  # github.com/buchen/portfolio was verified as official when first introduced to the cask
  url "https://github.com/buchen/portfolio/releases/download/#{version}/PortfolioPerformance-#{version}.dmg"
  appcast 'https://github.com/buchen/portfolio/releases.atom'
  name 'Portfolio Performance'
  homepage 'https://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'
end
