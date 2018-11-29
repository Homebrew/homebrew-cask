cask 'hiarcs-chess-explorer' do
  version '1.9.3.0'
  sha256 '1ce7544fbdf3afa53a760d263f57bfc82b1f5b8cf77480b25c3dbedb74080aed'

  url "http://www.hiarcs.com/hce/HIARCS-Chess-Explorer-Installer-v#{version}.pkg"
  appcast 'http://www.hiarcs.com/hce/mac-v120.htm'
  name '(Deep) HIARCS Chess Explorer'
  homepage 'http://www.hiarcs.com/mac-chess-explorer.htm'

  pkg "HIARCS-Chess-Explorer-Installer-v#{version}.pkg"

  uninstall signal:  ['TERM', 'com.hiarcs.chessexplorer'],
            pkgutil: 'com.hiarcs.*'
end
