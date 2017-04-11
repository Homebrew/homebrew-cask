cask 'dmmbookviewer' do
  version '3.1.1'
  sha256 'b69c9f49a23ffa0e7c158ac97bd35f5b3e883c919a1a474b8f544bea456c018d'

  # dmm.co.jp was verified as official when first introduced to the cask
  url "http://dl.aka.dmm.co.jp/dmmviewer/mac/DMMViewerSetup_Mac_#{version}.pkg"
  name 'DMMbookviewer'
  homepage 'https://book.dmm.com/info_bookviewer.html'

  pkg "DMMViewerSetup_Mac_#{version}.pkg"

  uninstall pkgutil: 'com.dmm.DMMbookviewer',
            delete:  '/Applications/DMMbookviewer.app'
end
