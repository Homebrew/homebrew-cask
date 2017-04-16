cask :v1 => 'gedit' do
  version '3.2.6-3'
  sha256 '29847dfeff20518822ff012ef770a874c1f95670fa7f166bbb97a23995ac0686'

  url "http://ftp.gnome.org/pub/GNOME/binaries/mac/gedit/#{version.sub(/\.\d+\-\d+$/, '')}/gedit-#{version}.dmg"
  name 'gedit'
  homepage 'https://wiki.gnome.org/Apps/Gedit'
  license :gpl

  depends_on :formula => 'libxml2'

  caveats "The version of libxml2 currently packaged with gedit causes an error.\nTo resolve this, copy the lib file from the homebrew libxml2 formula to the application directory after installation is complete: 'cp /usr/local/Cellar/libxml2/2.9.2/lib/libxml2.2.dylib /Applications/gedit.app/Contents/Resources/lib/' (via http://stackoverflow.com/a/20221633/4098263)."

  app 'gedit.app'
end
