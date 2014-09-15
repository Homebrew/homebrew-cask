class GmailNotifr < Cask
  version '0.9.0'
  sha256 '47ecf1edf08678e6a1c53cb5a3e39d5c6c5f63a9145fc7cbc7df2ebada42b662'

  url 'https://s3.amazonaws.com/assets.ashchan.com/gmailnotifr/GmailNotifr-0.9.0.zip'
  appcast 'https://s3.amazonaws.com/assets.ashchan.com/gmailnotifr/update.xml'
  homepage 'http://ashchan.com/projects/gmail-notifr'

  app 'Gmail Notifr.app'
end
