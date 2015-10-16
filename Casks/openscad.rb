cask :v1 => 'openscad' do
  version '2015.03'
  sha256 '405f27a81b89720c5b74a0b883c72a6d16f79f90f665c1a4f30f5db9268c4052'

  url "http://files.openscad.org/OpenSCAD-#{version}.dmg"
  name 'OpenSCAD'
  appcast 'http://files.openscad.org/appcast.xml',
          :sha256 => '8d29f24c07f1223560f12efa163b43348c135398e2b43617bfd9b11028debc01'
  homepage 'http://www.openscad.org/'
  license :gpl

  app 'OpenSCAD.app'
end
