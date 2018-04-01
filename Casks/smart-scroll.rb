cask 'smart-scroll' do
  version '4.3.7'
  sha256 'ac4ee8a5a32c3a1e4c89ed2a57788e4ef5e0e9977bd5261547df883460da4dd8'

  url 'https://www.marcmoini.com/SmartScroll.dmg'
  appcast 'https://www.marcmoini.com/sxv_en.html',
          checkpoint: '095b5b20a795778af5a7f6da7262e91f83ff0292cda1a94bf510eb5de9181abb'
  name 'Smart Scroll'
  homepage 'https://www.marcmoini.com/sx_en.html'

  prefpane 'Smart Scroll.prefPane'
end
