cask :v1 => 'gawker' do
  version '0.8.4'
  sha256 'a834558a7850ef52f03184c628de97f50357ab42efb4725b590d1c47c39b4cd5'

  url "http://downloads.sourceforge.net/sourceforge/gawker/Gawker_#{version}.zip"
  appcast 'http://gawker.sourceforge.net/appcast.xml'
  name 'Gawker'
  homepage 'http://gawker.sourceforge.net/Gawker.html'
  license :gpl

  app 'Gawker.app'
end
