cask 'gimp' do
  version '2.8.22'
  sha256 '3414960c54b262b5793947f55a6d1ab53045a507978a21ff758a54bf6be4bd16'

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version}-x86_64.dmg"
  name 'GIMP'
  homepage 'https://www.gimp.org/'

  app 'GIMP.app'

  postflight do
    set_permissions "#{appdir}/GIMP.app/Contents/MacOS/GIMP", 'a+rx'
  end

  zap trash: [
               '~/Library/Preferences/org.gnome.gimp.plist',
               '~/Library/Application Support/GIMP',
               '~/Library/Saved Application State/org.gnome.gimp.savedState',
             ]
end
