cask 'gmail-notifr' do
  version '0.9.0'
  sha256 '47ecf1edf08678e6a1c53cb5a3e39d5c6c5f63a9145fc7cbc7df2ebada42b662'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/assets.ashchan.com/gmailnotifr/GmailNotifr-#{version}.zip"
  appcast 'https://s3.amazonaws.com/assets.ashchan.com/gmailnotifr/update.xml',
          :sha256 => '45ae2b697ab4aa9ba974992b0e317b9352d1930ce4456a37ecda82fa3632daef'
  name 'Gmail Notifr'
  homepage 'http://ashchan.com/projects/gmail-notifr'
  license :mit

  app 'Gmail Notifr.app'

  zap :delete => '~/Library/Preferences/com.ashchan.GmailNotifr.plist'
end
