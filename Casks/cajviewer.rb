cask 'cajviewer' do
  version :latest
  sha256 :no_check

  url 'http://cajviewer.cnki.net/download/CAJViewerMac.dmg'
  name 'CAJViewer'
  homepage 'http://cajviewer.cnki.net/download.html'

  pkg 'CAJViewerMac.pkg'

  uninstall pkgutil: 'com.TTKN.CAJViewerMac'
end
