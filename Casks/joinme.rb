cask 'joinme' do
  version :latest
  sha256 :no_check

  url 'https://secure.join.me/Download.aspx?installer=mac&webdownload=true'
  name 'join.me'
  homepage 'https://www.join.me/'

  app 'join.me.app'

  zap delete: [
                '~/Library/Application Support/join.me',
                '~/Library/Application Support/com.logmein.join.me',
                '~/Library/Preferences/com.logmein.join.me.plist',
                '~/Library/Saved Application State/com.logmein.join.me.savedState',
                '~/Library/Caches/com.logmein.join.me',
                '~/Library/Logs/join.me*',
              ]
end
