cask 'osirix-quicklook' do
  version :latest
  sha256 :no_check

  url 'http://www.osirix-viewer.com/Museum/OsiriXQuickLookInstaller.zip'
  name 'OsiriX DICOM QuickLook'
  homepage 'https://www.osirix-viewer.com/'

  pkg 'OsiriXQuickLookInstaller.pkg'

  uninstall pkgutil: 'com.pixmeo.osirix.osirixQuicklookPlugin.OsiriXQuickLookPlugin.pkg'
end
