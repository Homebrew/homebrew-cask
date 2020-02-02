cask 'fontlab' do
  version '7.0.2.7334'
  sha256 '2970b30075325df53db75ed0b8cbc686d3530157bc463d70588f7b4680ad5049'

  # fontlab.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split('.').last}/FontLab-#{version.major}-Mac-Install-#{version.split('.').last}.dmg"
  appcast "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab/'

  app "FontLab #{version.major}.app"
end
