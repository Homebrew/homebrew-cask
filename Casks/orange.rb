cask 'orange' do
  version '3.21.0'
  sha256 'b2ce562780b17ada5fc420adeeedf03003dd26900a397ef003a349b722ccf346'

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  appcast 'https://orange.biolab.si/download/'
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
