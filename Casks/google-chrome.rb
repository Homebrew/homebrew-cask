cask 'google-chrome' do
  if MacOS.version >= :yosemite
    version '68.0.3440.84'
    sha256 'c61bf8dcf737cf32f64bac9547f0ffff5ce5b6d0fc7c828e7e75fead60b0a6d6'
    url 'https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg'
    appcast 'https://omahaproxy.appspot.com/history?os=mac;channel=stable'
  elsif MacOS.version == :mavericks
    version '65.0.3325.181s'
    sha256 '60f5d8e2d7d80f8170c85e247c319b7cfd58b740c389483a5eceae3969b1a3be'
    url 'https://dl.google.com/dl/chrome/mac/legacy10_9/GGRO/googlechrome.dmg'
  else
    version '49.0.2623.112'
    sha256 '69c416f9ee5cb60ffd91baad3db567cbc98da9f58cb5348f0ef927820a6020c9'
    url 'https://dl.google.com/dl/chrome/mac/legacy/GGRO/googlechrome.dmg'
  end

  name 'Google Chrome'
  homepage 'https://www.google.com/chrome/'

  auto_updates true
  conflicts_with cask: [
                         'google-chrome-beta',
                         'google-chrome-dev',
                       ]

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
