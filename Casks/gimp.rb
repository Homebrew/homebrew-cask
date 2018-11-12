cask 'gimp' do
  version '2.10.8-1'
  sha256 'b80a9b6d76ac5037386d8c51a1b4f58958bec99f6e2c117de1925a4105c5a1f4'

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version.major_minor_patch}-x86_64-1.dmg"
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
