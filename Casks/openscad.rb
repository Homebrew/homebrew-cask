cask 'openscad' do
  version '2015.03-3'
  sha256 '1f2e8e52e04bbb6d3b2c8699d314d1ca28d2fcf68164eca7d0a20e248cee01a7'

  url "http://files.openscad.org/OpenSCAD-#{version}.dmg"
  appcast 'http://files.openscad.org/appcast.xml'
  name 'OpenSCAD'
  homepage 'https://www.openscad.org/'

  app 'OpenSCAD.app'
  binary "#{appdir}/OpenSCAD.app/Contents/MacOS/OpenSCAD", target: 'openscad'

  zap trash: [
               '~/Library/Caches/org.openscad.OpenSCAD',
               '~/Library/Preferences/org.openscad.OpenSCAD.plist',
               '~/Library/Saved Application State/org.openscad.OpenSCAD.savedState',
             ]
end
