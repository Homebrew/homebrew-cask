cask 'neteasemailmaster' do
  version '1.2.1'
  sha256 'b53a7c069f7c908c8b138c14ab1886a4bac0d2b102a9ca25dc301a917b725f6b'

  url "http://client.dl.126.net/macmail/dashi/mailmaster.dmg"
  name 'NetEase Mail Master'
  name '网易邮箱大师'
  homepage 'http://mail.163.com/dashi/'

  app 'MailMaster.app'

  uninstall quit: 'com.netease.macmail'

  zap delete: [
                '~/Library/Application Scripts/com.netease.macmail',
                '~/Library/Containers/com.netease.macmail',
                '~/Library/Preferences/com.netease.macmail.plist',
                '~/Library/Saved Application State/com.netease.macmail.savedState',
              ]
end
