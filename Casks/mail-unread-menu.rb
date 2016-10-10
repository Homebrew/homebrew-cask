cask 'mail-unread-menu' do
  version '3.4.6'
  sha256 '869527e4a7ef34cd116856537f69f57a5c5775798c54615a9aae3e2060f166e9'

  url "http://loganrockmore.com/MailUnreadMenu/MailUnreadMenu_#{version}.zip"
  name 'Mail Unread Menu'
  homepage 'http://loganrockmore.com/MailUnreadMenu/'

  app 'Mail Unread Menu.app'

  zap delete: [
                '~/Library/Preferences/com.loganrockmore.MailUnreadMenu.plist',
                '~/Library/Application Support/Mail Unread Menu/',
                '~/Library/Mail/Bundles/MailUnreadMenu.mailbundle',
              ]
end
