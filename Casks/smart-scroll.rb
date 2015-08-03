cask :v1 => 'smart-scroll' do
  version '4.0.5'
  sha256 'fb6eb3b81188f0de5edf67206da550b22f111aa108dca1912c21596d56d63379'

  url 'http://www.marcmoini.com/SmartScroll.zip'
  name 'Smart Scroll'
  homepage 'http://www.marcmoini.com/sx_en.html'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  prefpane "Smart Scroll #{version}.prefPane"
end
