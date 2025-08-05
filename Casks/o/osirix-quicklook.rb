cask "osirix-quicklook" do
  version "6.0"
  sha256 :no_check

  url "https://www.osirix-viewer.com/Museum/OsiriXQuickLookInstaller.zip"
  name "OsiriX DICOM QuickLook"
  desc "Quick Look plugin for OsiriX DICOM files"
  homepage "https://www.osirix-viewer.com/"

  deprecate! date: "2024-11-15", because: :unmaintained

  pkg "OsiriXQuickLookInstaller.pkg"

  uninstall pkgutil: "com.pixmeo.osirix.osirixQuicklookPlugin.OsiriXQuickLookPlugin.pkg"

  caveats do
    requires_rosetta
  end
end
