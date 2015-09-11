cask :v1 => 'cajviewer' do
  version :latest
  sha256 :no_check

  url 'http://cajviewer.cnki.net/download/CAJViewerMac.dmg'
  name 'CAJViewer'
  homepage 'http://cajviewer.cnki.net/download.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'CAJViewerMac.pkg'

  uninstall :pkgutil => 'com.TTKN.CAJViewerMac'
end
