cask 'lynxlet' do
  version '0.8.1'
  sha256 '78224e5bfcfcea7d63a22e3baaeac0df215673b94af32c572714b061cf05789f'

  url "https://habilis.net/lynxlet/Lynxlet_#{version}.dmg"
  appcast 'https://habilis.net/lynxlet/',
          checkpoint: 'cc87e809d0d8810a42e336cd1958aeca06c259762346fd3607bdf645628b9a4b'
  name 'Lynxlet'
  homepage 'https://habilis.net/lynxlet/'

  app 'Lynxlet.app'
end
