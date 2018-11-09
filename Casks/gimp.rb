cask 'gimp' do
  version '2.10.8'
  sha256 'c2a7171d0fcbc451987e4ce2026b7486e5c2e3d2641dfcdad6928d6df4c1c666'

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version}-x86_64.dmg"
  name 'GIMP'
  homepage 'https://www.gimp.org/'

  app "GIMP-#{version.major_minor}.app"

  postflight do
    set_permissions "#{appdir}/GIMP-#{version.major_minor}.app/Contents/MacOS/gimp", 'a+rx'
  end

  zap trash: [
               '~/Library/Preferences/org.gnome.gimp.plist',
               '~/Library/Application Support/Gimp',
               '~/Library/Saved Application State/org.gnome.gimp.savedState',
             ]
end
