cask 'fontlab' do
  version '7.1.3.7478'
  sha256 'cb432199283003073ede28c32cf22c4cd3fac43b98aa72a84895e48d39b284f6'

  # fontlab.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split('.').last}/FontLab-#{version.major}-Mac-Install-#{version.split('.').last}.dmg"
  appcast "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab/'

  app "FontLab #{version.major}.app"
end
