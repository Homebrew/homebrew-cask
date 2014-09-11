class Silverlight < Cask
  version '5.1.30514.0'
  sha256 '7425532f16a5ee9aa4db68154803bbc7df20a84e1d8ff46f38f23c0e678e240d'

  url 'http://silverlight.dlservice.microsoft.com/download/F/8/C/F8C0EACB-92D0-4722-9B18-965DD2A681E9/30514.00/Silverlight.dmg'
  homepage 'http://www.microsoft.com/silverlight/'

  pkg 'Silverlight.pkg'
  uninstall :pkgutil => 'com.microsoft.SilverlightInstaller'
end
