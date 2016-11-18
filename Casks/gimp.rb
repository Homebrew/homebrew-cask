cask 'gimp' do
  version '2.8.18-x86_64-1'
  sha256 'e9f67f7a8b29871a977bb3d1c9129e473da2a52c3b46c2d42663cbbf939ded68'

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
