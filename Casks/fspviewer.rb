cask 'fspviewer' do
  version '2.1.0'
  sha256 '85707a151aab3474aba62ced2cb7e94cfff234e99f42c59307030db1f56b3851'

  url "http://www.fsoft.it/FSPViewer/dwn-files/FSPViewer-#{version}.dmg"
  appcast 'http://www.fsoft.it/FSPViewer/download/'
  name 'FSPViewer'
  homepage 'http://www.fsoft.it/FSPViewer/'

  app 'FSPViewer.app'
end
