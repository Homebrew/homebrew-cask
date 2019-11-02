cask 'menumeters' do
  version '1.9.9'
  sha256 'ee34d38ead45a13d77b81b7c949d6a157d671e4a385b46d207c4a4cac25dfba2'

  # github.com/yujitach/MenuMeters was verified as official when first introduced to the cask
  url "https://github.com/yujitach/MenuMeters/releases/download/#{version}/MenuMeters_#{version.major_minor_patch}.zip"
  appcast 'https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/MenuMeters-Update.xml'
  name 'MenuMeters for El Capitan (and later)'
  homepage 'https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'MenuMeters.app'

  uninstall login_item: 'MenuMeters',
            quit:       'com.yujitach.MenuMeters'

  zap trash: [
               '~/Library/Caches/com.yujitach.MenuMeters',
               '~/Library/PreferencesPanes/MenuMeters.prefPane',
               '~/Library/Preferences/com.ragingmenace.MenuMeters.plist',
               '~/Library/Preferences/com.yujitach.MenuMeters.plist',
             ]
end
