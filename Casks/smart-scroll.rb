cask 'smart-scroll' do
  version '4.2.2'
  sha256 '5feb2b4c75ae6313452292d65e468dcd5d63ac3c01eac60bd10cfdb3aed81b98'

  url 'https://www.marcmoini.com/SmartScroll.dmg'
  name 'Smart Scroll'
  homepage 'https://www.marcmoini.com/sx_en.html'

  depends_on macos: '>= :snow_leopard'

  prefpane "Smart Scroll #{version}.prefPane"
end
