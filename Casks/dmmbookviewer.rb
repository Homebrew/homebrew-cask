cask 'dmmbookviewer' do
  version '3.1.4'
  sha256 '7644addebc62e7d83be305955883d74386253b208f643f687af29af0a7e6a33b'

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
