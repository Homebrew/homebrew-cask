cask 'fontlab' do
  version '7.1.1.7378'
  sha256 '13c87197b84fd29abbd2ddaca02118155e8321a5cd09fd878ae4da1b98ae34e4'

  # fontlab.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split('.').last}/FontLab-#{version.major}-Mac-Install-#{version.split('.').last}.dmg"
  appcast "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab/'

  app "FontLab #{version.major}.app"
end
