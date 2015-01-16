cask :v1 => 'lynxlet' do
  version '0.8.1'
  sha256 '78224e5bfcfcea7d63a22e3baaeac0df215673b94af32c572714b061cf05789f'

  url "http://habilis.net/lynxlet/Lynxlet_#{version}.dmg"
  name 'Lynxlet'
  homepage 'http://habilis.net/lynxlet/'
  license :closed

  app 'Lynxlet.app'
end
