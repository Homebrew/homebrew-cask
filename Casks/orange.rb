cask 'orange' do
  version '3.4.2'
  sha256 '1201acb6cf2089df74a40c605c53b80d1086be558ce4814e1515d103eb4f410e'

  url "http://orange.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
