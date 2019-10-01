cask 'gimp' do
  version '2.10.12'
  sha256 '8b964ad3dbbe31d0fa48fb834aa4c17fc0eb81becbc4595a57b04e3d4fc6efeb'

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version}-x86_64.dmg"
  appcast 'https://download.gimp.org/pub/gimp/stable/osx/'
  name 'GIMP'
  homepage 'https://www.gimp.org/'

  app "GIMP-#{version.major_minor}.app"
  binary "#{appdir}/GIMP-#{version.major_minor}.app/Contents/MacOS/gimp"

  postflight do
    set_permissions "#{appdir}/GIMP-#{version.major_minor}.app/Contents/MacOS/gimp", 'a+rx'
  end

  zap trash: [
               '~/Library/Preferences/org.gnome.gimp.plist',
               '~/Library/Application Support/Gimp',
               '~/Library/Saved Application State/org.gnome.gimp.savedState',
             ]
end
