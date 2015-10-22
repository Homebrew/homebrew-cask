cask :v1 => 'smart-scroll' do
  version '4.0.6'
  sha256 '18582a39a6cfb08ab9f2ff99852eb245055d506d70b5573bf59be62e4c5c6078'

  url 'http://www.marcmoini.com/SmartScroll.zip'
  name 'Smart Scroll'
  homepage 'http://www.marcmoini.com/sx_en.html'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  prefpane "Smart Scroll #{version}.prefPane"
end
