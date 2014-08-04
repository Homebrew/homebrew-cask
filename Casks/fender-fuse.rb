class FenderFuse < Cask
  version '2.7.1'
  sha256 'e68de1a1c1068d34dda354e2678ddac4a796b2ccdface95b034a438455442919'

  url 'https://www.fmicassets.com/fender/support/software/fender_software/fender_fuse/mac/FenderFUSE_FULL_2.7.1.dmg'
  homepage 'https://fuse.fender.com/'

  install 'Fender FUSE Installer.app/Contents/Resources/Fender FUSE.pkg'
  uninstall :pkgutil => 'com.Fender.pkg.FenderFUSE', :files => '/Applications/Fender FUSE.app'
end
