cask 'fontlab' do
  version '7.1.3.7493'
  sha256 'b2505d9cc5af04ca9f2a7ea18ee81e278e40ae891075df0e23a2d96968c89f61'

  # fontlab.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split('.').last}/FontLab-#{version.major}-Mac-Install-#{version.split('.').last}.dmg"
  appcast "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab/'

  app "FontLab #{version.major}.app"
end
