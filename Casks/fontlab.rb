cask 'fontlab' do
  version '6.1.3,7016'
  sha256 'c0a950ed702c60d35d9d9d4e5e8f803eadf258e66503c0edf473968f6e997605'

  url "https://download.fontlab.com/fontlab-vi/downloads/FontLab-VI-Mac-Install-#{version.after_comma}.dmg"
  appcast 'https://download.fontlab.com/fontlab-vi/appcast-mac.xml'
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab-vi'

  app 'FontLab VI.app'
end
