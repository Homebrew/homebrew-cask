cask :v1 => 'cajviewer' do
  version :latest
  sha256 :no_check

  url 'http://cajviewer.cnki.net/download/CAJViewerMac.dmg'
  homepage 'http://cajviewer.cnki.net/download.html'
  license :unknown    # todo: improve this machine-generated value

  pkg 'CAJViewerMac.pkg'

  uninstall :pkgutil => 'com.TTKN.CAJViewerMac'
end
