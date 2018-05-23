cask 'google-chrome' do
  version '66.0.3359.181'
  sha256 '6fc4139ad458f177ac2939ef51c84a26d5e8ed7c96a4f16acbac935f48fe83f1'

  url 'https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg'
  appcast 'https://omahaproxy.appspot.com/history?os=mac;channel=stable',
          checkpoint: '281d6e76d63cad8a7b869ba143cdae444b72b62080013f3c00c0d0fd4be5c1de'
  name 'Google Chrome'
  homepage 'https://www.google.com/chrome/'

  auto_updates true
  conflicts_with cask: [
                         'google-chrome-beta',
                         'google-chrome-dev',
                       ]
  depends_on macos: '>= :mavericks'

  app 'Google Chrome.app'

  uninstall launchctl: [
                         'com.google.keystone.agent',
                         'com.google.keystone.daemon',
                       ]

  zap trash: [
               '/Library/Caches/com.google.SoftwareUpdate.*',
               '/Library/Google/Google Chrome Brand.plist',
               '/Library/Google/GoogleSoftwareUpdate',
               '~/Library/Application Support/Google/Chrome',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.app.*.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.sfl*',
               '~/Library/Caches/Google/Chrome',
               '~/Library/Caches/com.google.Chrome',
               '~/Library/Caches/com.google.Chrome.helper.*',
               '~/Library/Caches/com.google.Keystone',
               '~/Library/Caches/com.google.Keystone.Agent',
               '~/Library/Caches/com.google.SoftwareUpdate',
               '~/Library/Google/Google Chrome Brand.plist',
               '~/Library/Google/GoogleSoftwareUpdate',
               '~/Library/LaunchAgents/com.google.keystone.agent.plist',
               '~/Library/Logs/GoogleSoftwareUpdateAgent.log',
               '~/Library/Preferences/com.google.Chrome.plist',
               '~/Library/Preferences/com.google.Keystone.Agent.plist',
               '~/Library/Saved Application State/com.google.Chrome.app.*.savedState',
               '~/Library/Saved Application State/com.google.Chrome.savedState',
               '~/Library/WebKit/com.google.Chrome',
             ],
      rmdir: [
               '/Library/Google',
               '~/Library/Application Support/Google',
               '~/Library/Caches/Google',
               '~/Library/Google',
             ]
end
