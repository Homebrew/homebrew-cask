cask 'fontlab' do
  version '7.0.0.7264'
  sha256 '1347268c8e5c28d38a02c6b55f299d93159da24e2d5fa339e24211e8bbce3029'

  url "https://download.fontlab.com/fontlab-#{version.major}/upd-mac.php"
  appcast 'https://download.fontlab.com/fontlab-vi/appcast-mac.xml'
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab/'

  app 'FontLab VI.app'
end
