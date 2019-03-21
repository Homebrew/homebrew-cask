cask 'fontlab' do
  version '6.1.3.7013'
  sha256 'ef5a7a354b80c4bdf6ca0499658ecf1cb247093849607150ac61d7715217f4b6'

  url 'https://download.fontlab.com/fontlab-vi/upd-mac.php'
  appcast 'https://download.fontlab.com/fontlab-vi/appcast-mac.xml'
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab-vi'

  app 'FontLab VI.app'
end
