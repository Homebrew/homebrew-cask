cask 'fontlab' do
  version '7.1.1.7382'
  sha256 '9b9fc338d047539e64b1042062d739875d7e49afc556fc0f8a50f25caa8a44f8'

  # fontlab.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split('.').last}/FontLab-#{version.major}-Mac-Install-#{version.split('.').last}.dmg"
  appcast "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab/'

  app "FontLab #{version.major}.app"
end
