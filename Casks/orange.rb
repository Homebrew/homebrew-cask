cask 'orange' do
  version '3-3.3.5'
  sha256 'e6a839ef6488d8becf979750701c8f395a97155b379ff8b5f7f12ab90a0cdb01'

  url "http://orange.biolab.si/download/files/Orange#{version}.dmg"
  name 'Orange'
  homepage 'http://orange.biolab.si/'

  app 'Orange3.app'
end
