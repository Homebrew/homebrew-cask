cask 'modelio' do
  version '3.6.1'
  sha256 'ceceff67762561d52bea90806f97a0a0a51d473d7083d77816d73c309d247bda'

  # sourceforge.net/modeliouml was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/modeliouml/modelio-open-source-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://sourceforge.net/projects/modeliouml/rss',
          checkpoint: 'e97c37ac8ad809324e280528d70a9c674e70357f0df568efd53c5bd1cbbb9fde'
  name 'Modelio'
  homepage 'https://www.modelio.org/'

  app "Modelio #{version.major_minor}.app"

  zap delete: '~/.modelio'
end
