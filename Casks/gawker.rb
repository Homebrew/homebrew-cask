cask 'gawker' do
  version '0.8.4'
  sha256 'a834558a7850ef52f03184c628de97f50357ab42efb4725b590d1c47c39b4cd5'

  # downloads.sourceforge.net/gawker was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gawker/Gawker_#{version}.zip"
  appcast 'https://gawker.sourceforge.io/appcast.xml'
  name 'Gawker'
  homepage 'https://gawker.sourceforge.io/Gawker.html'

  app 'Gawker.app'
end
