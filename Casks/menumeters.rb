cask 'menumeters' do
  version '2.0.3'
  sha256 '815b6b3d8c063364b172f4406c25fbb35cb9967d34ca109b51e5534ae71dde21'

  url "https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_#{version.major_minor_patch}.zip"
  appcast 'https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/MenuMeters-Update.xml'
  name 'MenuMeters for El Capitan (and later)'
  homepage 'https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'MenuMeters.app'

  uninstall quit: 'com.yujitach.MenuMeters'

  zap trash: [
               '~/Library/Caches/com.yujitach.MenuMeters',
               '~/Library/PreferencesPanes/MenuMeters.prefPane',
               '~/Library/Preferences/com.ragingmenace.MenuMeters.plist',
               '~/Library/Preferences/com.yujitach.MenuMeters.plist',
             ]
end
