cask 'menumeters' do
  version '2.0.4'
  sha256 '32f382f471a7ed2998c32d379cf27c6c6e3d620b63ed3cc68e0f2929a8cb44d5'

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
