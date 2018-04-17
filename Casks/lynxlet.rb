cask 'lynxlet' do
  version '0.8.1'
  sha256 '78224e5bfcfcea7d63a22e3baaeac0df215673b94af32c572714b061cf05789f'

  url "https://habilis.net/lynxlet/Lynxlet_#{version}.dmg"
  appcast 'https://habilis.net/lynxlet/',
          checkpoint: 'd429bbf2e4c5d21a74b5e637295d5ef037268fb637fc508746f2863d72d75a52'
  name 'Lynxlet'
  homepage 'https://habilis.net/lynxlet/'

  app 'Lynxlet.app'
end
