cask 'icc' do
  version '1.0,r7564'
  sha256 '28b8fbd96efc571bc00f8088c41dd836a118451cbe39d69e83ba0c5d52c00491'

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
