cask 'portfolioperformance' do
  version '0.34.0'
  sha256 'f36a49585821bd2a7244058ad8e87887d7580e836f289e5f865781e8a650eb14'

  # bintray.com/buchen/downloads was verified as official when first introduced to the cask
  url "https://bintray.com/buchen/downloads/download_file?file_path=#{version}%2FPortfolioPerformance-distro-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://github.com/buchen/portfolio/releases.atom'
  name 'Portfolio Performance'
  homepage 'http://www.portfolio-performance.info/portfolio/'

  auto_updates true

  app 'PortfolioPerformance.app'

  caveats do
    depends_on_java '8+'
  end
end
