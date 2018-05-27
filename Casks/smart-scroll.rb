cask 'smart-scroll' do
  version '4.3.9'
  sha256 '2ec6b7097a91940949128e52a174d72fbac7932a19f770b6b2108aa60e65d299'

  url 'https://www.marcmoini.com/SmartScroll.dmg'
  appcast 'https://www.marcmoini.com/sxv_en.html',
          checkpoint: '3893e3b27476332c3a8aca5ee67faa2038c2f8cf836d0392d808c2095fab5ccb'
  name 'Smart Scroll'
  homepage 'https://www.marcmoini.com/sx_en.html'

  prefpane 'Smart Scroll.prefPane'
end
