cask 'openscad' do
  version '2015.03-2'
  sha256 '5bd717b100f9a23da4539d2b8771d3817b9066aa4e3e0d63e5a8068d2ecaeb86'

  url "http://files.openscad.org/OpenSCAD-#{version}.dmg"
  appcast 'http://files.openscad.org/appcast.xml',
          checkpoint: '78064960619c06c2589b2c5d36e7e5ae896e31a88ca633f31083179daf4bf805'
  name 'OpenSCAD'
  homepage 'http://www.openscad.org/'
  license :gpl

  app 'OpenSCAD.app'
end
