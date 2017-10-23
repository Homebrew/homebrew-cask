cask 'joinme' do
  version :latest
  sha256 :no_check

  url 'https://secure.join.me/Download.aspx?installer=mac&webdownload=true'
  name 'join.me'
  homepage 'https://www.join.me/'

  auto_updates true

  app 'join.me.app'

  zap delete: [
                '~/Library/Caches/com.logmein.join.me',
                '~/Library/Logs/join.me*',
                '~/Library/Saved Application State/com.logmein.join.me.savedState',
              ],
      trash:  [
                '~/Library/Application Support/join.me',
                '~/Library/Application Support/com.logmein.join.me',
                '~/Library/Preferences/com.logmein.join.me.plist',
              ]
end
