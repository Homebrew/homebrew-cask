cask 'mailmaster' do
  version '2.0.1.1063'
  sha256 'a8327583e10bfb419aae3b713a9166f218e76529e04eefd43838ef2d0089d13a'

  # fm.dl.126.net was verified as official when first introduced to the cask
  url "http://fm.dl.126.net/mailmaster/updatemac/mailmaster-#{version}.dmg"
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
