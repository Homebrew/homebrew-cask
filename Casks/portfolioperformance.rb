cask 'portfolioperformance' do
  version '0.31.1'
  sha256 '17c7f1c3ac81b29dad0a352ed3cfd6b8de929489e5f4d45d97f1d51b79da0cca'

  # bintray.com/buchen/downloads was verified as official when first introduced to the cask
  url "https://bintray.com/buchen/downloads/download_file?file_path=#{version}%2FPortfolioPerformance-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom',
          checkpoint: '08089613cb9edd30652db4f0a2bc8eb91992ca58d9b413bad297a849f6a1a72c'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java '8+'
  end
end
