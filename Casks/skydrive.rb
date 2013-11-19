class Skydrive < Cask
  url 'http://wl.dlservice.microsoft.com/download/5/6/E/56EAD987-4914-4E8D-A7AD-DF4ADA7E2C5F/SkyDrive.pkg'
  homepage 'http://windows.microsoft.com/en-us/skydrive/download'
  version '17.0'
  sha1 '2af2c6bba805276f92d362a28cf504335f9d8779'
  install 'SkyDrive.pkg'
  uninstall :pkgutil => 'com.microsoft.SkyDriveInstaller', :files =>
    '/Applications/SkyDrive.app'
end
