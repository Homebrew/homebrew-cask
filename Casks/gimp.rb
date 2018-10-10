cask 'gimp' do
  version '2.10.6'
  sha256 '52fe241b69d5353c546ffac008d89328fa3126d8f2557642c4661ba68e4ad6c8'

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
