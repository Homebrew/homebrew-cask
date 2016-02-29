cask 'openscad' do
  version '2015.03-3'
  sha256 '1f2e8e52e04bbb6d3b2c8699d314d1ca28d2fcf68164eca7d0a20e248cee01a7'

  url "http://files.openscad.org/OpenSCAD-#{version}.dmg"
  appcast 'http://files.openscad.org/appcast.xml',
          checkpoint: 'af4d9b1bfa3e626d8a4916afbc3db629a00080c26d36e0453c46e0a0f7c21595'
  name 'OpenSCAD'
  homepage 'http://www.openscad.org/'
  license :gpl

  app 'OpenSCAD.app'
end
