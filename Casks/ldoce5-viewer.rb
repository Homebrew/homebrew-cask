cask 'ldoce5-viewer' do
  version :latest
  sha256 :no_check

  url 'https://hakidame.net/ldoce5viewer/static/packages/LDOCE5%20Viewer.app.zip'
  name 'LDOCE5 Viewer'
  homepage 'https://hakidame.net/ldoce5viewer/'
  license :gpl

  app 'LDOCE5 Viewer.app'
end
