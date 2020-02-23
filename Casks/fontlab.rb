cask 'fontlab' do
  version '7.1.0.7355'
  sha256 'bde40abbbfc5048b58ec41d9f797ae65ac405b384df03358fe40101a938c7805'

  # fontlab.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split('.').last}/FontLab-#{version.major}-Mac-Install-#{version.split('.').last}.dmg"
  appcast "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
  name 'Fontlab'
  homepage 'https://www.fontlab.com/font-editor/fontlab/'

  app "FontLab #{version.major}.app"
end
