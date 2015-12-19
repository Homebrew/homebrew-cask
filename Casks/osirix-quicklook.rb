cask 'osirix-quicklook' do
  version :latest
  sha256 :no_check

  url 'http://www.osirix-viewer.com/OsiriXQuickLookInstaller.zip'
  name 'OsiriX DICOM QuickLook'
  homepage 'http://www.osirix-viewer.com/'
  license :gratis

  pkg 'OsiriXQuickLookInstaller.pkg'

  uninstall :pkgutil => 'com.pixmeo.osirix.osirixQuicklookPlugin.OsiriXQuickLookPlugin.pkg'
end
