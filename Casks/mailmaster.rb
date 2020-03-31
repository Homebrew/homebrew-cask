cask 'mailmaster' do
  version '2.14.1'
  sha256 '4fe9fb8956a8290eb4f6dad34ba8991a840aaf9c72724ab98c0c4d9db977b704'

  # client.dl.126.net/macmail/dashi was verified as official when first introduced to the cask
  url 'http://client.dl.126.net/macmail/dashi/mailmaster.dmg'
  name 'NetEase Mail Master'
  name '网易邮箱大师'
  homepage 'https://mail.163.com/dashi/'

  app 'MailMaster.app'

  uninstall quit: 'com.netease.macmail'

  zap trash: [
               '~/Library/Application Scripts/com.netease.macmail',
               '~/Library/Containers/com.netease.macmail',
               '~/Library/Preferences/com.netease.macmail.plist',
               '~/Library/Saved Application State/com.netease.macmail.savedState',
             ]
end
