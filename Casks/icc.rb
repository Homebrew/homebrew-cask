cask 'icc' do
  version '1.0,r7587'
  sha256 '01f4ad8775900654d3209b90132491a3d6325945f20228f6b09a5651a64a19fa'

  url "http://download.chessclub.com/desktop/mac/ICCforMac.#{version.after_comma}.pkg"
  name 'ICC for Mac'
  homepage 'https://www.chessclub.com/download-software/icc-for-mac'

  pkg "ICCforMac.#{version.after_comma}.pkg"

  uninstall pkgutil: 'com.chessclub.*'

  zap delete: [
                '~/Library/Saved Application State/com.chessclub.desktop-icc.savedState',
                '~/.cache/internet_chess_club',
              ],
      trash:  [
                '~/.internet_chess_club',
                '~/Library/Preferences/com.chessclub.desktop-icc',
              ]
end
