cask 'display-rotation-menu' do
  version '1.2'
  sha256 '818ddf7293873db7109d855396d4a7a79ac79813174cd3d546e536b5a5f0ab6a'

  url "http://www.magesw.com/displayrotation/DisplayRotationMenu_#{version}.zip"
  name 'Display Rotation Menu'
  homepage 'http://www.magesw.com/displayrotation/'

  app 'Display Rotation Menu.app'

  uninstall signal: ['TERM', 'com.magesw.DisplayRotationStatusItem']
end
