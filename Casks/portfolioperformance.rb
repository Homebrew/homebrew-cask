cask 'portfolioperformance' do
  version '0.31.0'
  sha256 '027959abf8b9e66e8dc944272ff194f3ab8a19340c66abf7eb7a914b393ccf2f'

  # bintray.com/buchen/downloads was verified as official when first introduced to the cask
  url "https://bintray.com/buchen/downloads/download_file?file_path=#{version}%2FPortfolioPerformance-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom',
          checkpoint: '6506ccf297fc37d7ce140250c85f033444620b4096be39c58d4cd660d84f8bd2'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java '8+'
  end
end
