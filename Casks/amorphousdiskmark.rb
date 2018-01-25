cask 'amorphousdiskmark' do
  version :latest
  sha256 :no_check

  url 'http://katsurashareware.com/dl/AmorphousDiskMark.zip'
  name 'AmorphousDiskMark'
  homepage 'http://www.katsurashareware.com/pgs/adm.html'

  app 'AmorphousDiskMark.app'

  zap trash: [
               '~/Library/Preferences/com.katsurashareware.AmorphousDiskMark.plist',
               '~/Library/Saved Application State/com.katsurashareware.AmorphousDiskMark.savedState',
             ]
end
