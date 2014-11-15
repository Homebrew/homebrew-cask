cask :v1 => 'fender-amp-drivers' do
  version '2.7.1'
  sha256 'f73c4c66c6d9bc6492d8f22126415f5a36eb555714adc147590fb3a5d25b8c34'

  url "http://support.fender.com/software/fender_software/fender_fuse/mac/FenderFUSE_FULL_#{version}.dmg"
  homepage 'https://fuse.fender.com/'
  license :unknown

  pkg 'Fender FUSE Installer.app/Contents/Resources/FenderDrivers.pkg'
  uninstall :pkgutil => 'com.Fender.pkg.FenderAmpDrivers'
end
