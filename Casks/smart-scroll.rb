cask 'smart-scroll' do
  version '4.3.8'
  sha256 '9f4c83bfb9e141f30258e219f3ba15578aade75cda12ba631627e02dae7e8e29'

  url 'https://www.marcmoini.com/SmartScroll.dmg'
  appcast 'https://www.marcmoini.com/sxv_en.html',
          checkpoint: '092d82976e142eee7196eae3ef6efa060c61580b202044d1de3c800b012465df'
  name 'Smart Scroll'
  homepage 'https://www.marcmoini.com/sx_en.html'

  prefpane 'Smart Scroll.prefPane'
end
