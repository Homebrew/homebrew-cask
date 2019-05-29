cask 'sleepyhead' do
  version '1.0.0-beta-2.2,20160421'
  sha256 '182b818143815b4da5e02260e35832afc9787610a9fb5aba07b309923f01b54b'

  url "https://sleepyhead.jedimark.net/releases/SleepyHead-#{version.before_comma}-Snapshot-MacOSX-#{version.after_comma}.dmg"
  name 'SleepyHead OpenSource CPAP Review Software'
  homepage 'https://sleepyhead.jedimark.net/'

  app 'SleepyHead.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jedimark.sleepyhead.sfl*',
               '~/Library/Preferences/com.jedimark.SleepyHead-Testing.plist',
               '~/Library/Preferences/com.jedimark.SleepyHead.plist',
               '~/Library/Saved Application State/Jedimark.SleepyHead.savedState',
             ]
end
