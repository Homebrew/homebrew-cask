cask 'openscad' do
  version '2015.03-3'
  sha256 'f7de286f2f3e5b625946e93ea27f65ecb59b552da1f33b5e29f29e5ddcbce633'

  url "http://files.openscad.org/OpenSCAD-#{version}.dmg"
  appcast 'http://files.openscad.org/appcast.xml',
          checkpoint: 'af4d9b1bfa3e626d8a4916afbc3db629a00080c26d36e0453c46e0a0f7c21595'
  name 'OpenSCAD'
  homepage 'http://www.openscad.org/'
  license :gpl

  app 'OpenSCAD.app'
end
