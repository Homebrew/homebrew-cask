cask 'clipmenu' do
  version '0.4.3'
  sha256 '4f26de434a8d412bb063515b6f9354ae4eed12c265af36eefb83e2bfe3647eac'

  # dropbox.com/u/1140644 was verified as official when first introduced to the cask
  url "https://www.dropbox.com/s/mz2v2psimbwdfql/ClipMenu.app.zip?dl=0"
  appcast 'https://feeds.feedburner.com/clipmenu-appcast',
          checkpoint: 'bcd91bd0f5da24998cbdb2ac0be516c156a60105a9504aedc05ae2a7a4165647'
  name 'ClipMenu'
  homepage 'http://www.clipmenu.com/'
  license :gratis

  app 'ClipMenu.app'

  zap delete: [
                '~/Library/Application Support/ClipMenu',
                '~/Library/Preferences/com.naotaka.ClipMenu.plist',
              ]
end
