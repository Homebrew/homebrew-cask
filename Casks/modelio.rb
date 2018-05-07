cask 'modelio' do
  version '3.7.1'
  sha256 'd55afecab1bc121c1c2e4ad90a187715db25d245df964cf61fc7cd3f27eb2f40'

  # sourceforge.net/modeliouml was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/modeliouml/modelio-open-source-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://sourceforge.net/projects/modeliouml/rss',
          checkpoint: '909ad4be4bfb3fcf8a91da9ac5007531f06e2ac76e7374c072bf429df9847541'
  name 'Modelio'
  homepage 'https://www.modelio.org/'

  app "Modelio #{version.major_minor}.app"

  zap trash: '~/.modelio'
end
