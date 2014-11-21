cask :v1 => 'fender-amp-drivers' do
  version '2.7.1'
  sha256 'e68de1a1c1068d34dda354e2678ddac4a796b2ccdface95b034a438455442919'

  # fmicassets.com is the official download host per the vendor homepage
  url "http://www.fmicassets.com/fender/support/software/fender_software/fender_fuse/mac/FenderFUSE_FULL_#{version}.dmg"
  homepage 'https://fuse.fender.com/'
  license :unknown

  pkg 'Fender FUSE Installer.app/Contents/Resources/FenderDrivers.pkg'
  uninstall :pkgutil => 'com.Fender.pkg.FenderAmpDrivers'
end
