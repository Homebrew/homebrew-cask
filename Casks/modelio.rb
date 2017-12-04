cask 'modelio' do
  version '3.7.0'
  sha256 '33b215ad7facf271d31b720cb1e69ee311d290e1997c60afc1edd35dc59ab4a3'

  # sourceforge.net/modeliouml was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/modeliouml/modelio-open-source-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://sourceforge.net/projects/modeliouml/rss',
          checkpoint: '49801a2d86031bb1d739039f4c4958c92d7661f0efc58c386897103b6b18c53a'
  name 'Modelio'
  homepage 'https://www.modelio.org/'

  app "Modelio #{version.major_minor}.app"

  zap trash: '~/.modelio'
end
