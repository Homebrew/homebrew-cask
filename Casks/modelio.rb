cask 'modelio' do
  version '4.0.0'
  sha256 'e902daa044d616e855cbeb0537cf9d85aaa6837a839aaf02759bb8e428e4ddb9'

  # sourceforge.net/modeliouml was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/modeliouml/modelio-open-source-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://sourceforge.net/projects/modeliouml/rss'
  name 'Modelio'
  homepage 'https://www.modelio.org/'

  app "Modelio #{version.major_minor}.app"

  zap trash: '~/.modelio'
end
