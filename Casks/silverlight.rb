class Silverlight < Cask
  version '5.1.30317.0'
  sha256 'a425c522f84c8c3b2bcfb5f40abab0f8d67733f824be5c0e383819d06f230007'

  url 'http://silverlight.dlservice.microsoft.com/download/D/6/6/D66CF013-1021-437B-9A65-983871CCB3E6/30317.00/Silverlight.dmg'
  homepage 'http://www.microsoft.com/silverlight/'

  install 'Silverlight.pkg'
  uninstall :pkgutil => 'com.microsoft.SilverlightInstaller'
end
