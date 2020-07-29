cask 'fontlab' do
  version '7.1.2.7436'
  sha256 '9cfb1e0c8e815dd4bde71896b4d35457ac00ab71cbb53af561a5a67da8f593c6'

  # fontlab.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split('.').last}/FontLab-#{version.major}-Mac-Install-#{version.split('.').last}.dmg"
  appcast "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab/'

  app "FontLab #{version.major}.app"
end
