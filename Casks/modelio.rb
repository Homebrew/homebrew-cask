cask 'modelio' do
  version '3.6.1'
  sha256 'ceceff67762561d52bea90806f97a0a0a51d473d7083d77816d73c309d247bda'

  # sourceforge.net/modeliouml was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/modeliouml/modelio-open-source-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://sourceforge.net/projects/modeliouml/rss',
          checkpoint: '2785724985add56bb2ac8dfc0f71c1724412bf15eb6c8fe02cdd0b18cc5e1d17'
  name 'Modelio'
  homepage 'https://www.modelio.org/'

  app "Modelio #{version.major_minor}.app"

  zap trash: '~/.modelio'
end
