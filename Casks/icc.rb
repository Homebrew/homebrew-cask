cask 'icc' do
  version '1.0,r7611'
  sha256 '01f4ad8775900654d3209b90132491a3d6325945f20228f6b09a5651a64a19fa'

  url "http://download.chessclub.com/desktop/mac/ICCforMac.#{version.after_comma}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://download.chessclub.com/desktop/mac/ICCforMac.latest.pkg',
          configuration: version.after_comma
  name 'ICC for Mac'
  homepage 'https://www.chessclub.com/download-software/icc-for-mac'

  pkg "ICCforMac.#{version.after_comma}.pkg"

  uninstall pkgutil: 'com.chessclub.*'

  zap trash: [
               '~/Library/Preferences/com.chessclub.desktop-icc',
               '~/Library/Saved Application State/com.chessclub.desktop-icc.savedState',
               '~/.cache/internet_chess_club',
               '~/.internet_chess_club',
             ]
end
