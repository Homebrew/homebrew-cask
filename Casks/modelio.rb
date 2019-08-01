cask 'modelio' do
  version '3.8.1'
  sha256 'abc3e4c99a3285d9bcbefdbc529a06e8c51a18b02cbe542f41d82e10672e9730'

  # sourceforge.net/modeliouml was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/modeliouml/modelio-open-source-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://sourceforge.net/projects/modeliouml/rss'
  name 'Modelio'
  homepage 'https://www.modelio.org/'

  app "Modelio #{version.major_minor}.app"

  zap trash: '~/.modelio'
end
