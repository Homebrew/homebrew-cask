cask 'intika-firefox' do
  version '2.1,64.0.0'
  sha256 '7585622fb7ee7b7fa6bc2ad98c473bf1c0862793c9391203897de1b267e7fcfb'

  url "https://github.com/intika/Librefox/releases/download/Librefox-v#{version.before_comma}-v#{version.after_comma}/Librefox-#{version.before_comma}-Firefox-Mac-#{version.after_comma}-x64.dmg"
  appcast 'https://github.com/intika/Librefox/releases.atom'
  name 'Librefox'
  homepage 'https://github.com/intika/Librefox/'

  conflicts_with cask: [
                         'intika-firefox-esr',
                         'firefox',
                         'firefox-beta',
                         'firefox-esr',
                       ]

  app 'Firefox.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/firefox_*',
               '~/Library/Application Support/Firefox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*',
               '~/Library/Caches/Firefox',
               '~/Library/Caches/Mozilla/updates/Applications/Firefox',
               '~/Library/Preferences/org.mozilla.firefox.plist',
             ],
      rmdir: [
               '~/Library/Application Support/Mozilla',
               '~/Library/Caches/Mozilla/updates/Applications',
               '~/Library/Caches/Mozilla/updates',
               '~/Library/Caches/Mozilla',
             ]
end
