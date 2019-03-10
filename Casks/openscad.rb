cask 'openscad' do
  version '2019.01-RC3'
  sha256 '3569408dae9073adfd2336cda256deecb74ec0afaffcc5b79ccaa765124fc10e'

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
