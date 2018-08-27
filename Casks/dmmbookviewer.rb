cask 'dmmbookviewer' do
  version '3.1.5'
  sha256 '00fbd0fca4ffa2d0ddd661af168636d0337abd302ff99945d3622eb91b11d307'

  # dmm.co.jp was verified as official when first introduced to the cask
  url "http://dl.aka.dmm.co.jp/dmmviewer/mac/DMMViewerSetup_Mac_#{version}.pkg"
  name 'DMMbookviewer'
  homepage 'https://book.dmm.com/info_bookviewer.html'

  pkg "DMMViewerSetup_Mac_#{version}.pkg"

  uninstall pkgutil:   [
                         'com.dmm.DMMbookviewer',
                         'jp.co.cyphertec.installer.acwd.plist',
                         'jp.co.cyphertec.installer.framework.CypherGuardAC',
                         'jp.co.cyphertec.installer.info.CypherGuardAC',
                         'jp.co.cyphertec.installer.kext.nosigned',
                         'jp.co.cyphertec.installer.kext.signed',
                       ],
            kext:      [
                         'jp.co.cyphertec.CypherGuardKa',
                         'jp.co.cyphertec.CypherGuardAT',
                       ],
            launchctl: 'jp.co.cyphertec.acwd'
end
