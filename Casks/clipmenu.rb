cask 'clipmenu' do
  version '0.4.3'
  sha256 'd0d7ca6c23f51b2dfe78c7bb40bf2f212c21b3304b3eacde86112d8ef3e6bfb9'

  # dropbox.com/u/1140644 was verified as official when first introduced to the cask
  url "https://dl.dropbox.com/u/1140644/clipmenu/ClipMenu_#{version}.dmg"
  appcast 'https://feeds.feedburner.com/clipmenu-appcast',
          checkpoint: 'bcd91bd0f5da24998cbdb2ac0be516c156a60105a9504aedc05ae2a7a4165647'
  name 'ClipMenu'
  homepage 'http://www.clipmenu.com/'

  app 'ClipMenu.app'

  zap delete: [
                '~/Library/Application Support/ClipMenu',
                '~/Library/Preferences/com.naotaka.ClipMenu.plist',
                '~/Library/Caches/com.naotaka.ClipMenu',
              ]
end
