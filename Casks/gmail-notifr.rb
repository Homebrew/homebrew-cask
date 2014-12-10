cask :v1 => 'gmail-notifr' do
  version '0.9.0'
  sha256 '47ecf1edf08678e6a1c53cb5a3e39d5c6c5f63a9145fc7cbc7df2ebada42b662'

  url "https://s3.amazonaws.com/assets.ashchan.com/gmailnotifr/GmailNotifr-#{version}.zip"
  appcast 'https://s3.amazonaws.com/assets.ashchan.com/gmailnotifr/update.xml',
          :sha256 => '20876c0cef8d54463a5189948259e7ad268a28424b96e7fa2fbad860b0ec9554'
  homepage 'http://ashchan.com/projects/gmail-notifr'
  license :unknown    # todo: improve this machine-generated value

  app 'Gmail Notifr.app'

  zap :delete => '~/Library/Preferences/com.ashchan.GmailNotifr.plist'
end
