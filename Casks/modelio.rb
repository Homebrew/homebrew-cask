cask 'modelio' do
  version '4.0.1'
  sha256 '7df6e3c2c9ee16a973f4737f7bf7e5c2e7cc7a968ba92c966a5e2b545cc198a9'

  # sourceforge.net/modeliouml was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/modeliouml/modelio-open-source-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://sourceforge.net/projects/modeliouml/rss'
  name 'Modelio'
  homepage 'https://www.modelio.org/'

  app "Modelio #{version.major_minor}.app"

  zap trash: '~/.modelio'
end
