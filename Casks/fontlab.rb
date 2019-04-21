cask 'fontlab' do
  version '6.1.4,7043'
  sha256 '7f1174afa88516459a8ab57a8190c44f1fffb2fc12553efe6fcdf539fef2cbd7'

  url "https://download.fontlab.com/fontlab-vi/downloads/FontLab-VI-Mac-Install-#{version.after_comma}.dmg"
  appcast 'https://download.fontlab.com/fontlab-vi/appcast-mac.xml'
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab-vi'

  app 'FontLab VI.app'
end
