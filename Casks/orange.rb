cask 'orange' do
  version '3.22.0'
  sha256 '9bce16067e851164f73444bec367828b81594952826d67d252c4772add95c7a7'

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  appcast 'https://orange.biolab.si/download/'
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
