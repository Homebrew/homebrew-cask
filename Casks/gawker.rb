cask 'gawker' do
  version '0.8.4'
  sha256 'a834558a7850ef52f03184c628de97f50357ab42efb4725b590d1c47c39b4cd5'

  url "https://downloads.sourceforge.net/gawker/Gawker_#{version}.zip"
  appcast 'http://gawker.sourceforge.net/appcast.xml'
  name 'Gawker'
  homepage 'http://gawker.sourceforge.net/Gawker.html'

  app 'Gawker.app'
end
