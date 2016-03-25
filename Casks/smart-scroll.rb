cask 'smart-scroll' do
  version '4.0.9'
  sha256 'c7db45807376b4f8fcbab011d974d4a9ffceda50e7547c952906751e239a9067'

  url 'http://www.marcmoini.com/SmartScroll.zip'
  name 'Smart Scroll'
  homepage 'http://www.marcmoini.com/sx_en.html'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  prefpane "Smart Scroll #{version}.prefPane"
end
