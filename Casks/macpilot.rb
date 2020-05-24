cask 'macpilot' do
  version '11.1.4'
  sha256 '75fc421d51ebd172ebdf149400fbcd010cf1224529e2e7d3fdf1915e62757f64'

  url 'https://www.koingosw.com/products/macpilot/download/macpilot.dmg'
  appcast 'https://www.koingosw.com/postback/versioncheck.php?appname=macpilot&type=sparkle'
  name 'MacPilot'
  homepage 'https://www.koingosw.com/products/macpilot/'

  depends_on macos: '>= :mojave'

  app 'MacPilot.app'

  zap trash: [
               '~/Library/Application Support/com.koingosw.MacPilot',
               '~/Library/Caches/com.koingosw.MacPilot',
               '~/Library/Preferences/com.koingosw.MacPilot.plist',
               '~/Library/Saved Application State/com.koingosw.MacPilot.savedState',
             ]
end
