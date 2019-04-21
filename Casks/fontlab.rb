cask 'fontlab' do
  version '6.1.4,7044'
  sha256 'cc04ff57dbd51915f41e69811254b1fba0bf6900ac04a015b5dd4c7efc3ca588'

  url "https://download.fontlab.com/fontlab-vi/downloads/FontLab-VI-Mac-Install-#{version.after_comma}.dmg"
  appcast 'https://download.fontlab.com/fontlab-vi/appcast-mac.xml'
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab-vi'

  app 'FontLab VI.app'
end
