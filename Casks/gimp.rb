cask 'gimp' do
  version '2.10.4'
  sha256 'f7b73608b9f476f168962d34f8de09b6f3bb80c98f03159cdd98145f54f9696b'

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version}-x86_64.dmg"
  name 'GIMP'
  homepage 'https://www.gimp.org/'

  app 'GIMP-2.10.app'

  postflight do
    set_permissions "#{appdir}/GIMP.app/Contents/MacOS/GIMP", 'a+rx'
  end

  zap trash: [
               '~/Library/Preferences/org.gnome.gimp.plist',
               '~/Library/Application Support/GIMP',
               '~/Library/Saved Application State/org.gnome.gimp.savedState',
             ]
end
