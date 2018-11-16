cask 'hiarcs-chess-explorer' do
  version '1.9.2.0'
  sha256 'c7e505403c2f26786d983563f83c0a231821466e6b8ac19ef8f02f5a2fefa9b7'

  url "http://www.hiarcs.com/hce/HIARCS-Chess-Explorer-Installer-v#{version}.pkg"
  appcast 'http://www.hiarcs.com/hce/mac-v120.htm'
  name '(Deep) HIARCS Chess Explorer'
  homepage 'http://www.hiarcs.com/mac-chess-explorer.htm'

  pkg "HIARCS-Chess-Explorer-Installer-v#{version}.pkg"

  uninstall signal:  ['TERM', 'com.hiarcs.chessexplorer'],
            pkgutil: 'com.hiarcs.*'
end
