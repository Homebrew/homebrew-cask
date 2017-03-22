cask 'google-chrome' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg'
  name 'Google Chrome'
  homepage 'https://www.google.com/chrome/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Google Chrome.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.app.*.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.sfl',
                '~/Library/Application Support/Google/Chrome',
                '~/Library/Caches/Google/Chrome',
                '~/Library/Caches/com.google.Chrome',
                '~/Library/Caches/com.google.Keystone',
                '~/Library/Caches/com.google.Keystone.Agent',
                '~/Library/Caches/com.google.SoftwareUpdate',
                '~/Library/Google/GoogleSoftwareUpdate',
                '~/Library/Google/Google Chrome Brand.plist',
                '~/Library/LaunchAgents/com.google.keystone.agent.plist',
                '~/Library/Logs/GoogleSoftwareUpdateAgent.log',
                '~/Library/Preferences/com.google.Chrome.plist',
                '~/Library/Preferences/com.google.Keystone.Agent.plist',
                '~/Library/Saved Application State/com.google.Chrome.app.*.savedState',
                '~/Library/Saved Application State/com.google.Chrome.savedState',
                '~/Library/WebKit/com.google.Chrome',
              ],
      rmdir:  [
                '~/Library/Application Support/Google',
                '~/Library/Caches/Google',
                '~/Library/Google',
              ]
end
