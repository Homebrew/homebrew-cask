cask 'portfolioperformance' do
  version '0.26.4'
  sha256 '65458b708ca788388420af0cd1769a87d5d0dfd3a27bbc3709047b467766d505'

  # s3.amazonaws.com/name.abuchen.portfolio was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/name.abuchen.portfolio/#{version}/PortfolioPerformance-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom',
          checkpoint: '215fb6253a5fc3451cd34d5377e6e0eeb2cb7e6ba5551e7933d4fa91182547d1'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java('8')
  end
end
