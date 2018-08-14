cask 'gmail-notifr' do
  version '0.9.0'
  sha256 '47ecf1edf08678e6a1c53cb5a3e39d5c6c5f63a9145fc7cbc7df2ebada42b662'

  # s3.amazonaws.com/assets.ashchan.com/gmailnotifr was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/assets.ashchan.com/gmailnotifr/GmailNotifr-#{version}.zip"
  appcast 'https://s3.amazonaws.com/assets.ashchan.com/gmailnotifr/update.xml'
  name 'Gmail Notifr'
  homepage 'https://ashchan.com/projects/gmail-notifr'

  app 'Gmail Notifr.app'

  zap trash: [
               '~/Library/Preferences/com.ashchan.GmailNotifr.plist',
               '~/Library/Caches/com.ashchan.GmailNotifr',
             ]
end
