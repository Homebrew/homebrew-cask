cask 'smart-scroll' do
  version '4.3.6'
  sha256 '4d082c1f05770bc509082585c1f01341b24b9815810c0118e0c479801825b479'

  url 'https://www.marcmoini.com/SmartScroll.dmg'
  appcast 'https://www.marcmoini.com/sxv_en.html',
          checkpoint: '5347c6018cbe583d1880a7796be09efea9105a626e329866b99e76db7e189db3'
  name 'Smart Scroll'
  homepage 'https://www.marcmoini.com/sx_en.html'

  prefpane "Smart Scroll #{version}.prefPane"
end
