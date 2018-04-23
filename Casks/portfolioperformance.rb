cask 'portfolioperformance' do
  version '0.30.1'
  sha256 '63db3e2e578e74e63c46dbac8bc2a69735dac7cf2686f07405b28ae93fccd60a'

  # s3.amazonaws.com/name.abuchen.portfolio was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/name.abuchen.portfolio/#{version}/PortfolioPerformance-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom',
          checkpoint: 'b27eb43b6a17c2fb323de7da245e8f531fbddf8a351a2c2c24f6d5f29ac27844'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java('8+')
  end
end
