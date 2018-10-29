cask 'micloud' do
  version '0.1.25'
  sha256 'e6220b871412f76467beb881cdda13ac4c9b827833772577db994e9157aa91aa'

  # update.micloud.xiaomi.net/download was verified as official when first introduced to the cask
  url "https://update.micloud.xiaomi.net/download/#{version}/osx_64/MiCloud-#{version}.dmg"
  name 'Mi Cloud'
  name '小米云服务'
  homepage 'https://i.mi.com/'

  app '小米云服务.app'

  uninstall quit: 'micloud.pc.xiaomi'

  zap trash: [
               '~/Library/Application Support/MiCloud',
               '~/Library/Caches/micloud.pc.xiaomi',
               '~/Library/Caches/micloud.pc.xiaomi.ShipIt',
               '~/Library/Preferences/micloud.pc.xiaomi.helper.plist',
               '~/Library/Preferences/micloud.pc.xiaomi.plist',
               '~/Library/Saved Application State/micloud.pc.xiaomi.savedState',
             ]
end
