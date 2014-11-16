cask :v1 => 'logitech-touch-mouse-server' do
  version :latest
  sha256 :no_check

  url "http://logitech.com/pub/techsupport/mouse/mac/touchmouse1.0.dmg"
  homepage 'http://support.logitech.com/en_us/product/6367'
  license :unknown

  app 'iTouch-Server.app'
end
