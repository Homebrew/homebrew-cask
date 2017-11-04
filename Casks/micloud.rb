cask 'micloud' do
  version '0.1.19'
  sha256 'b862efef50fd177c53861625f08090bc2b8eea6a2de32a3375d6e38963d196e6'

  # update.micloud.xiaomi.net/download was verified as official when first introduced to the cask
  url "https://update.micloud.xiaomi.net/download/#{version}/osx_64/MiCloud-#{version}.dmg"
  name 'Mi Cloud'
  name '小米云服务'
  homepage 'https://i.mi.com/'

  app '小米云服务.app'

  uninstall quit: 'micloud.pc.xiaomi'

  zap delete: [
                '~/Library/Caches/micloud.pc.xiaomi',
                '~/Library/Caches/micloud.pc.xiaomi.ShipIt',
                '~/Library/Saved Application State/micloud.pc.xiaomi.savedState',
              ],
      trash:  [
                '~/Library/Application Support/MiCloud',
                '~/Library/Preferences/micloud.pc.xiaomi.helper.plist',
                '~/Library/Preferences/micloud.pc.xiaomi.plist',
              ]
end
