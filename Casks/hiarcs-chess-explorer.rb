cask 'hiarcs-chess-explorer' do
  version '1.8e'
  sha256 '53dc3f7db266c1400dc2d5aab3a05eb8c503a50b4cdbc18e57d3d6d9ae0ce129'

  url "http://www.hiarcs.com/mhce/HIARCS-Chess-Explorer-Installer-v#{version}.pkg"
  name '(Deep) HIARCS Chess Explorer'
  homepage 'http://www.hiarcs.com/mac-chess-explorer.htm'

  pkg "HIARCS-Chess-Explorer-Installer-v#{version}.pkg"

  uninstall signal:  ['TERM', 'com.hiarcs.chessexplorer'],
            pkgutil: 'com.hiarcs.*'
end
