cask 'smart-scroll' do
  version '4.0.8'
  sha256 '77881b437ea5b90ae5889a1a94f7d11560abb84ba72696010d78163281d2fec0'

  url 'http://www.marcmoini.com/SmartScroll.zip'
  name 'Smart Scroll'
  homepage 'http://www.marcmoini.com/sx_en.html'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  prefpane "Smart Scroll #{version}.prefPane"
end
