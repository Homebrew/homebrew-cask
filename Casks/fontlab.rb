cask 'fontlab' do
  version '7.1.1.7380'
  sha256 'f31f1a3c0b13d0b13617649606e7ff95bc7b0a20b2852a2262fbc54042b8b502'

  # fontlab.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split('.').last}/FontLab-#{version.major}-Mac-Install-#{version.split('.').last}.dmg"
  appcast "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab/'

  app "FontLab #{version.major}.app"
end
