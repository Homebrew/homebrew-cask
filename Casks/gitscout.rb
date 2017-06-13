cask 'gitscout' do
  version :latest
  sha256 :no_check

  url 'https://gitscout.com/marshmallows'
  name 'Gitscout'
  homepage 'https://gitscout.com/'

  app 'Gitscout.app'

  zap delete: [
                '~/Library/Application Support/Gitscout',
                '~/Library/Preferences/com.electron.gitscout.helper.plist',
                '~/Library/Preferences/com.electron.gitscout.plist',
                '~/Library/Saved Application State/com.electron.gitscout.savedState',
              ]
end
