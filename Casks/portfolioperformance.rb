cask 'portfolioperformance' do
  version '0.28.2'
  sha256 '1c928f8de0baad01e2312f6f42e3163580504cc86348557a0fdadd364897bd99'

  # s3.amazonaws.com/name.abuchen.portfolio was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/name.abuchen.portfolio/#{version}/PortfolioPerformance-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom',
          checkpoint: 'be195f97876ee428a6da7eca3baff5db3fa5a28a5d035a0c786d9b4fe2786b91'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java('8+')
  end
end
