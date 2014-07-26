class FenderFuse < Cask
  url 'http://support.fender.com/software/fender_software/fender_fuse/mac/FenderFUSE_FULL_2.7.1.dmg'
  homepage 'https://fuse.fender.com/'
  version '2.7.1'
  sha1 '9ef7b06843fce4cf27b00ef81db1cf025825d647'
  install 'Fender FUSE Installer.app/Contents/Resources/Fender FUSE.pkg'
  uninstall :pkgutil => 'com.Fender.pkg.FenderFUSE', :files => '/Applications/Fender FUSE.app'
end
