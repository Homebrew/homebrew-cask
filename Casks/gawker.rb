cask 'gawker' do
  version '0.8.4'
  sha256 'a834558a7850ef52f03184c628de97f50357ab42efb4725b590d1c47c39b4cd5'

  url "https://downloads.sourceforge.net/gawker/Gawker_#{version}.zip"
  appcast 'http://gawker.sourceforge.net/appcast.xml',
          checkpoint: '5a8f2adae2f10e3bff78ed21aec5fd8f96fbd6abf3be641a3257e6de3b62ac52'
  name 'Gawker'
  homepage 'http://gawker.sourceforge.net/Gawker.html'

  app 'Gawker.app'
end
