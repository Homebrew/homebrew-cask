cask 'dmmbookviewer' do
  version '2.0.4'
  sha256 'ac794dc71761a8a891dc237c11665866cfe76f7bcce68c20f7afb24a1a4a39b9'

  # dmm.co.jp was verified as official when first introduced to the cask
  url "http://dl.aka.dmm.co.jp/dmmviewer/mac/DMMViewerSetup_Mac_#{version}.pkg"
  name 'DMMbookviewer'
  homepage 'https://book.dmm.com/info_bookviewer.html'

  pkg "DMMViewerSetup_Mac_#{version}.pkg"

  uninstall pkgutil: 'com.dmm.DMMbookviewer',
            delete:  '/Applications/DMMbookviewer.app'
end
