cask 'smart-scroll' do
  version '4.2'
  sha256 '5ebe15dd73b708770263bb9aae1e22702539aeeae269656f72410e563fcf7ca4'

  url 'http://www.marcmoini.com/SmartScroll.dmg'
  name 'Smart Scroll'
  homepage 'http://www.marcmoini.com/sx_en.html'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  prefpane "Smart Scroll #{version}.prefPane"
end
