cask 'fontlab' do
  version '6.1.2.6927'
  sha256 'ab5079a206cb1ddda0f39889ea10ccf6bf53b5ffd5bacceabb6ace99074db2b8'

  url 'https://download.fontlab.com/fontlab-vi/upd-mac.php'
  appcast 'https://download.fontlab.com/fontlab-vi/appcast-mac.xml'
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab-vi'

  app 'FontLab VI.app'
end
