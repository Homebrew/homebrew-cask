cask 'portfolioperformance' do
  version '0.35.1'
  sha256 '4fa68644cf91968c5ab7e072eace941b9b7eb3b94e15c606bdc1394cf254bd32'

  # bintray.com/buchen/downloads was verified as official when first introduced to the cask
  url "https://bintray.com/buchen/downloads/download_file?file_path=#{version}%2FPortfolioPerformance-distro-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom'
  name 'Portfolio Performance'
  homepage 'https://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java '8+'
  end
end
