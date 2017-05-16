cask 'portfolioperformance' do
  version '0.26.5'
  sha256 '3eaadc0af0c907f208fe9ad2c4b1c7b8a7097c5a2ed9dbc751fdf80d91edaa6c'

  # s3.amazonaws.com/name.abuchen.portfolio was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/name.abuchen.portfolio/#{version}/PortfolioPerformance-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom',
          checkpoint: '475debd9736f182c897806e5063b987a2651ad07f8a183977f3c05e526685e29'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java('8')
  end
end
