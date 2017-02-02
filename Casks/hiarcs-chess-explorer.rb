cask 'hiarcs-chess-explorer' do
  version '1.9.1'
  sha256 'b08b328f767db0cf2aa552ede7251b69175ed78be30da23ca6a16de1d4dbaa62'

  url "http://www.hiarcs.com/mhce/HIARCS-Chess-Explorer-Installer-v#{version}.pkg"
  name '(Deep) HIARCS Chess Explorer'
  homepage 'http://www.hiarcs.com/mac-chess-explorer.htm'

  pkg "HIARCS-Chess-Explorer-Installer-v#{version}.pkg"

  uninstall signal:  ['TERM', 'com.hiarcs.chessexplorer'],
            pkgutil: 'com.hiarcs.*'
end
