cask 'dmm' do
  version :latest
  sha256 :no_check

  url 'https://www.dmm.com/transfer/-/dmmviewer/=/device=mac/'
  name 'DMMViewer'
  homepage 'http://www.dmm.com/dc/book/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'DMMViewer.pkg'

  uninstall pkgutil: 'jp.co.cyphertec.installer.app.ImageViewer'
end
