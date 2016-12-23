cask 'modelio' do
  version '3.6.0'
  sha256 '382e3559ec34975cf7e222aaad7a0bf439abfaf22385941ee5c4872fce6de0d2'

  # sourceforge.net/modeliouml was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/modeliouml/modelio-open-source-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://sourceforge.net/projects/modeliouml/rss',
          checkpoint: '0f8b29761dc242fe4c4c0b2b78cfd8717a385ec10b465103c0eeca501bfee460'
  name 'Modelio'
  homepage 'https://www.modelio.org/'

  app "Modelio #{version.major_minor}.app"

  zap delete: '~/.modelio'
end
