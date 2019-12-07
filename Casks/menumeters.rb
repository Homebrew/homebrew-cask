cask 'menumeters' do
  version '2.0.2'
  sha256 '95572ea7b04c2284d4c258afc209432183b36c4aafd082bd4a03aa1e43a4d5f4'

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
