cask 'hiarcs-chess-explorer' do
  version '1.9.4'
  sha256 'eaf7627801ca4cc2351fef58bb313353eca2a51d894e28df2b627dd011856a7f'

  url "http://www.hiarcs.com/hce/HIARCS-Chess-Explorer-Installer-v#{version}.pkg"
  appcast 'http://www.hiarcs.com/hce/mac-v120.htm'
  name '(Deep) HIARCS Chess Explorer'
  homepage 'http://www.hiarcs.com/mac-chess-explorer.htm'

  pkg "HIARCS-Chess-Explorer-Installer-v#{version}.pkg"

  uninstall signal:  ['TERM', 'com.hiarcs.chessexplorer'],
            pkgutil: 'com.hiarcs.*'
end
