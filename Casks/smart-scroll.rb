cask 'smart-scroll' do
  version '4.0.7'
  sha256 '825517a2078bda2477be58cf36a6293d157b8e1057a4f615bcc6ce8d08aafcd4'

  url 'http://www.marcmoini.com/SmartScroll.zip'
  name 'Smart Scroll'
  homepage 'http://www.marcmoini.com/sx_en.html'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  prefpane "Smart Scroll #{version}.prefPane"
end
