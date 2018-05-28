cask 'portfolioperformance' do
  version '0.31.2'
  sha256 '91fa5edb63109b6b623d8fc10f8ff71423b2b68093e7b00b5b1cf0e9acee55ef'

  # bintray.com/buchen/downloads was verified as official when first introduced to the cask
  url "https://bintray.com/buchen/downloads/download_file?file_path=#{version}%2FPortfolioPerformance-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom',
          checkpoint: '58ef91436486941137add45e0e8a9172aab35db05c9b0192b6106047cb96aae7'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java '8+'
  end
end
