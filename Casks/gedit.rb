cask 'gedit' do
  version '3.2.6-3'
  sha256 '29847dfeff20518822ff012ef770a874c1f95670fa7f166bbb97a23995ac0686'

  url "http://ftp.gnome.org/pub/GNOME/binaries/mac/gedit/#{version.sub(%r{\.\d+\-\d+$}, '')}/gedit-#{version}.dmg"
  name 'gedit'
  homepage 'https://wiki.gnome.org/Apps/Gedit'
  license :gpl

  depends_on formula: 'libxml2'

  app 'gedit.app'

  postflight do
    library = Dir.glob("#{`brew --cellar`.chomp}/libxml2/**/libxml2.2.dylib").first
    system 'cp', '-f', library, "#{staged_path}/gedit.app/Contents/Resources/lib/"
  end
end
