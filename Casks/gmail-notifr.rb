class GmailNotifr < Cask
  version '0.8.0'
  sha256 '423330044f92e28cadacb875ba332579552c78cb80931b5a8a8a5dfba3d374ea'

  url 'https://s3.amazonaws.com/assets.ashchan.com/gmailnotifr/GmailNotifr-0.8.0.zip'
  appcast 'https://s3.amazonaws.com/assets.ashchan.com/gmailnotifr/update.xml'
  homepage 'http://ashchan.com/projects/gmail-notifr'

  link 'Gmail Notifr.app'
end
