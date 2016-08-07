cask 'smart-scroll' do
  version '4.1'
  sha256 '6f65ab53845b824e29001b62aa31f31c6d09aa4c05b88e72152c64442b859973'

  url 'http://www.marcmoini.com/SmartScroll.zip'
  name 'Smart Scroll'
  homepage 'http://www.marcmoini.com/sx_en.html'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  prefpane "Smart Scroll #{version}.prefPane"
end
