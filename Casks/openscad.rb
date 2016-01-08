cask 'openscad' do
  version '2015.03-2'
  sha256 '5bd717b100f9a23da4539d2b8771d3817b9066aa4e3e0d63e5a8068d2ecaeb86'

  url "http://files.openscad.org/OpenSCAD-#{version}.dmg"
  appcast 'http://files.openscad.org/appcast.xml',
          :sha256 => '554ac467d9f15e58b0857187b44bb63fefca247a2adc83e6fc5510b6e92699dd'
  name 'OpenSCAD'
  homepage 'http://www.openscad.org/'
  license :gpl

  app 'OpenSCAD.app'
end
