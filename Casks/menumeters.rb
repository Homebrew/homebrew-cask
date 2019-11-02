cask 'menumeters' do
  version '2.0.0'
  sha256 '6bbc68c215e70e686378d031aed7f3c35c98f68daf50a5ada53b0d7edf9158eb'

  # github.com/yujitach/MenuMeters was verified as official when first introduced to the cask
  url "https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_#{version.major_minor_patch}.zip"
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
