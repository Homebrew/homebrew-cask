cask :v1 => 'itouch-server' do
  version '1.0'
  sha256 'e8aae0461ce7056adcc4940dda65d3ec8e4929092f0f2465b3e1dc5e353a362e'

  url "http://logitech.com/pub/techsupport/mouse/mac/touchmousev#{version}.dmg"
  homepage 'http://support.logitech.com/en_us/product/6367'
  license :unknown

  app 'iTouch-Server.app'
end
