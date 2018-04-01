cask 'mailmaster' do
  version :latest
  sha256 :no_check

  # client.dl.126.net/macmail/dashi was verified as official when first introduced to the cask
  url 'http://client.dl.126.net/macmail/dashi/mailmaster.dmg'
  name 'NetEase Mail Master'
  name '网易邮箱大师'
  homepage 'http://mail.163.com/dashi/'

  app 'MailMaster.app'

  uninstall quit: 'com.netease.macmail'

  zap trash: [
               '~/Library/Application Scripts/com.netease.macmail',
               '~/Library/Containers/com.netease.macmail',
               '~/Library/Preferences/com.netease.macmail.plist',
               '~/Library/Saved Application State/com.netease.macmail.savedState',
             ]
end
