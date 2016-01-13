cask 'clipmenu' do
  version '0.4.3'
  sha256 'd0d7ca6c23f51b2dfe78c7bb40bf2f212c21b3304b3eacde86112d8ef3e6bfb9'

  # dropbox.com is the official download host per the vendor homepage
  url "https://dl.dropbox.com/u/1140644/clipmenu/ClipMenu_#{version}.dmg"
  appcast 'https://feeds.feedburner.com/clipmenu-appcast',
          :sha256 => '313a03110b6afe53d33a54660de745b77ac98016f1f9b76f515933523a6b4149'
  name 'ClipMenu'
  homepage 'http://www.clipmenu.com/'
  license :gratis

  app 'ClipMenu.app'

  zap :delete => [
                   '~/Library/Application Support/ClipMenu',
                   '~/Library/Preferences/com.naotaka.ClipMenu.plist',
                 ]
end
