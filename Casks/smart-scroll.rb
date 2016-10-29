cask 'smart-scroll' do
  version '4.2.1'
  sha256 '1af2c8ad754c2d88b8c04748ff4bf5a3a913666f3dd03084d292579cd584bd29'

  url 'https://www.marcmoini.com/SmartScroll.dmg'
  name 'Smart Scroll'
  homepage 'https://www.marcmoini.com/sx_en.html'

  depends_on macos: '>= :snow_leopard'

  prefpane "Smart Scroll #{version}.prefPane"
end
