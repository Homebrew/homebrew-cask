cask :v1 => 'smart-scroll' do
  version '4.0.4'
  sha256 '19b5fd9a5a35510e6f5b5b29bd97931f29d6d9e7a6c3bfe530c6f5378f3caf95'

  url 'http://www.marcmoini.com/SmartScroll.zip'
  name 'Smart Scroll'
  homepage 'http://www.marcmoini.com/sx_en.html'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  prefpane "Smart Scroll #{version}.prefPane"
end
