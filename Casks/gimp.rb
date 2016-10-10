cask 'gimp' do
  version '2.8.18-x86_64'
  sha256 '2430a1a1a12d146b5198175fa1878d9cf556a3903707e536a51c9429bf664ecc'

  url "https://download.gimp.org/pub/gimp/v2.8/osx/gimp-#{version}.dmg"
  name 'GIMP'
  homepage 'https://www.gimp.org'

  app 'GIMP.app'

  postflight do
    set_permissions "#{appdir}/GIMP.app/Contents/MacOS/GIMP", 'a+rx'
  end

  zap delete: [
                '~/Library/Application Support/GIMP',
                '~/Library/Saved Application State/org.gnome.gimp.savedState',
              ]
end
