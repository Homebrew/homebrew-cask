cask :v1 => 'clipmenu' do
  version '0.4.3'
  sha256 'd0d7ca6c23f51b2dfe78c7bb40bf2f212c21b3304b3eacde86112d8ef3e6bfb9'

  # dropbox is the official download host per the vendor homepage
  url "https://dl.dropbox.com/u/1140644/clipmenu/ClipMenu_#{version}.dmg"
  appcast 'http://feeds.feedburner.com/clipmenu-appcast',
          :sha256 => 'e9f9df0e48aad4e00b8df26fd622f42a0218f5be662b6d2ee496664c5f45b4a3'
  homepage 'http://www.clipmenu.com/'
  license :unknown

  app 'ClipMenu.app'
  zap :delete => [
                  '~/Library/Application Support/ClipMenu',
                  '~/Library/Preferences/com.naotaka.ClipMenu.plist',
                 ]
end
