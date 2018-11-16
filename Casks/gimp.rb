cask 'gimp' do
  version '2.10.8,2'
  sha256 '8ee527bfd5b4ac6a9b62dff3b0f0da6e4721b3dac208f29446cdeea6967d4f13'

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version.before_comma}-x86_64-#{version.after_comma}.dmg"
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
